import axios, {AxiosResponse} from 'axios';
import Web3 from 'web3';
import {Callback, Config, IAnalysisOffering, ITxObj} from "./config";

const contractJson = require('../contracts/TrustlessHealth.json');

export class TrustlessHealthClient {
    public static encode(data: string) {
        const result = [];
        for (const i of data) {
            switch(i) {
                case 'A':
                    result.push(0, 0, 0, 1);
                    break;
                case 'T':
                    result.push(0, 0, 1, 0);
                    break;
                case 'G':
                    result.push(0, 1, 0, 0);
                    break;
                case 'C':
                    result.push(1, 0, 0, 0);
                    break;
            }
        }
        return result;
    }

    public web3: Web3;
    public contractAddress = contractJson.networks["5777"].address;
    public contractABI = contractJson.abi;
    public contract: any = {};
    private readonly clientServer = axios.create({
        baseURL: 'http://localhost:5000/',
    });
    private readonly providerServer = axios.create({
        baseURL: 'http://localhost:5001/',
    });

    constructor() {
        this.initialize();
    }

    public initialize(): void {
        this.web3 = new Web3(Web3.givenProvider || "ws://localhost:8545");
        this.contract = new this.web3.eth.Contract(this.contractABI, this.contractAddress);

        // TODO: Remove debugging statement below
        this.GetCurrentAccount().then(account => {
            console.log('Account', account);
        });
    }

    public GetCurrentAccount(): Promise<string> {
        return new Promise<string>(async (resolve, reject) => {
            this.web3.eth.getAccounts().then(accounts => {
                resolve(accounts[0]) // Address at index 0 is the currently selected in MetaMask
            }).catch(error => {
                console.error('Could not get account!');
            })
        })
    }

    // ------------------------------------- Methods for Smart Contract ----------------------------------------------

    public CreateCategory(categoryName: string, callback: Callback): void {
        try {
            this.GetCurrentAccount().then(fromAddress => {
                if (fromAddress === null || fromAddress === undefined) {
                    callback(new Error('Account not set!'), undefined);
                    return;
                }
                const {numberToHex} = this.web3.utils;
                const encodedTx = this.contract.methods.createCategory(categoryName).encodeABI();

                const txObj: ITxObj = {
                    chainId: Config.chainId,
                    data: encodedTx,
                    from: fromAddress,
                    gasLimit: numberToHex(Config.gasLimit),
                    gasPrice: numberToHex(Config.gasPrice),
                    to: this.contractAddress
                };
                this.web3.eth.sendTransaction(txObj, callback);
            })
        } catch (error) {
            callback(error, undefined);
            return;
        }
    }

    public SubmitAnalysisOffering(
        host: string,
        paymentAddress: string,
        price: number,
        categoryId: number,
        title: string,
        description: string,
        callback: Callback): void {
        try {
            this.GetCurrentAccount().then(fromAddress => {
                if (fromAddress === null || fromAddress === undefined) {
                    callback(new Error('Account not set!'), undefined);
                    return;
                }
                const {numberToHex} = this.web3.utils;
                const encodedTx = this.contract.methods.submitAnalysisOffering(
                    host, paymentAddress, numberToHex(price), categoryId, title, description).encodeABI();

                const txObj: ITxObj = {
                    chainId: Config.chainId,
                    data: encodedTx,
                    from: fromAddress,
                    gasLimit: numberToHex(Config.gasLimit),
                    gasPrice: numberToHex(Config.gasPrice),
                    to: this.contractAddress
                };
                this.web3.eth.sendTransaction(txObj, callback);
            })

        } catch (error) {
            callback(error, undefined)
        }
    }

    public SubmitPurchaseOffering(
        offeringId: number,
        offeringPrice: number,
        categoryId: number,
        callback: Callback): void {
        try {
            this.GetCurrentAccount().then(fromAddress => {
                if (fromAddress === null || fromAddress === undefined) {
                    callback(new Error('Account not set!'), undefined);
                    return;
                }
                const {numberToHex} = this.web3.utils;
                const encodedTx = this.contract.methods.purchaseOffering(offeringId, categoryId).encodeABI();

                const txObj: ITxObj = {
                    chainId: Config.chainId,
                    data: encodedTx,
                    from: fromAddress,
                    gasLimit: numberToHex(Config.gasLimit),
                    gasPrice: numberToHex(Config.gasPrice),
                    to: this.contractAddress,
                    value: numberToHex(offeringPrice),
                };
                this.web3.eth.sendTransaction(txObj, callback);
            })
        } catch (error) {
            callback(error, undefined)
        }
    }

    public GetCategories(): Promise<string[]> {
        return new Promise<string[]>(async (resolve, reject) => {
            try {
                const categories = await this.contract.methods.getCategories().call();
                resolve(categories);
            } catch (e) {
                reject(e)
            }
        });
    }

    public GetOfferings(categoryId: number): Promise<IAnalysisOffering[]> {
        return new Promise<IAnalysisOffering[]>(async (resolve, reject) => {
            try {
                const offerings = await this.contract.methods.getOfferings(categoryId).call();
                resolve(offerings)
            } catch (e) {
                reject(e)
            }
        });
    }

    public RegisterPurchasedOfferingListener(callback: (error: Error, result: any) => void): void {
        try {
            this.contract.events.purchasedOffering({
                filter: {}
            }, callback);
        } catch (e) {
            console.error(e);
        }
    };

    // ------------------------------------------ Methods for FHE ---------------------------------------------------

    public getKeyPair = () => {
        console.log('Getting key pair...');
        return this.clientServer.post('generate_key_pair').then((result: AxiosResponse) => {
            return result.data;
        }).then((result: { data: { cloud_key: string, secret_key: string }}) => {
            return {
                cloudKey: result.data.cloud_key,
                secretKey: result.data.secret_key
            };
        });
    };

    public encrypt(data: number[], secretKey: string) {
        console.log('Encrypting...');
        return this.clientServer.post('encrypt', {
            data,
            secret_key: secretKey,
        }).then((result: AxiosResponse) => {
            return result.data;
        }).then((result: { data: { encrypted_data: string } }) => {
            return result.data.encrypted_data;
        });
    }

    public decrypt(data: string, secretKey: string) {
        console.log('Decrypting...');
        return this.clientServer.post('decrypt', {encrypted_data: data, secret_key: secretKey})
            .then((result: AxiosResponse) => {
                return result.data;
            }).then((result: { data: { result: number[] } }) => {
            return result.data.result;
        });
    }

    public compute(data: string, cloudKey: string) {
        console.log('Computing...');
        return this.providerServer.post('compute', {
            cloud_key: cloudKey,
            encrypted_data: data
        }).then((result: AxiosResponse) => {
            return result.data;
        }).then((result: { data: { encrypted_result: string } }) => {
            return result.data.encrypted_result;
        });
    }
}