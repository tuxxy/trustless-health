import axios, {AxiosResponse} from 'axios';
import Web3 from 'web3';
import {Callback, Config, ITxObj} from "./config";

const contractJson = require('../contracts/TrustlessHealth.json');

export class TrustlessHealthClient {
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
    private secretKey: string;
    private cloudKey: string;
    private data: number[];
    private encryptedData: string;
    private decryptedData: number[];

    constructor() {
        this.initialize();
    }

    public initialize(): void {
        this.web3 = new Web3(Web3.givenProvider || "ws://localhost:8545");
        this.contract = new this.web3.eth.Contract(this.contractABI, this.contractAddress);

    }

    public SendEthFromPrivateKey(receivingAddress: string, privateKey: string, quantity: number): Promise<void> {
        return new Promise<void>(async (resolve, reject) => {
            const {numberToHex} = this.web3.utils;
            const txObject = {
                gasLimit: numberToHex(Config.gasLimit),
                gasPrice: numberToHex(Config.gasPrice),
                to: receivingAddress,
                value: quantity * 10 ** 18,
            };

            const {rawTransaction} = await this.web3.eth.accounts.signTransaction(txObject, privateKey);
            // @ts-ignore
            this.web3.eth.sendSignedTransaction(rawTransaction)
                .on('receipt', (result: any) => {
                    console.log(result);
                    resolve();
                }).on('error', (error: Error) => {
                console.error(error)
            });
        });
    }


    // ------------------------------------- Methods for Smart Contract ----------------------------------------------

    public CreateCategory(categoryName: string, callback: Callback): void {
        try {
            const fromAddress = this.web3.eth.defaultAccount;
            if (fromAddress === null) {
                callback(new Error('Account not set'), undefined);
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

        } catch (error) {
            callback(error, undefined);
            return;
        }
    }

    public SubmitAnalysisOffering(
        fromAddress: string,
        host: string,
        paymentAddress: string,
        price: number,
        categoryId: number,
        title: string,
        description: string,
        callback: Callback): void {
        try {
            const {numberToHex} = this.web3.utils;
            const encodedTx = this.contract.methods.submitAnalysisOffering(
                host, paymentAddress, price, categoryId, title, description).encodeABI();

            const txObj: ITxObj = {
                chainId: Config.chainId,
                data: encodedTx,
                from: fromAddress,
                gasLimit: numberToHex(Config.gasLimit),
                gasPrice: numberToHex(Config.gasPrice),
                to: this.contractAddress
            };
            this.web3.eth.sendTransaction(txObj, callback);

        } catch (error) {
            callback(error, undefined)
        }
    }

    public SubmitPurchaseOffering(
        fromAddress: string,
        offeringId: number,
        categoryId: number,
        callback: Callback): void {
        try {
            const {numberToHex} = this.web3.utils;
            const encodedTx = this.contract.methods.purchaseOffering(offeringId, categoryId).encodeABI();

            const txObj: ITxObj = {
                chainId: Config.chainId,
                data: encodedTx,
                from: fromAddress,
                gasLimit: numberToHex(Config.gasLimit),
                gasPrice: numberToHex(Config.gasPrice),
                to: this.contractAddress
            };
            this.web3.eth.sendTransaction(txObj, callback);

        } catch (error) {
            callback(error, undefined)
        }
    }

    public CategoryExists(categoryId: number): Promise<boolean> {
        return new Promise<boolean>(async (resolve, reject) => {
            try {
                resolve(await this.contract.methods.categoryExists(categoryId).call());
            } catch (e) {
                reject(e)
            }
        })
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

    public GetOfferings(categoryId: number): Promise<string[]> {
        return new Promise<string[]>(async (resolve, reject) => {
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
        this.clientServer.post('generate_key_pair').then((result: AxiosResponse) => {
            return result.data;
        }).then((result: { data: { cloud_key: string, secret_key: string } }) => {
            this.secretKey = result.data.secret_key;
            this.cloudKey = result.data.cloud_key;
            console.log('Secret and cloud keys set');
            this.encrypt([0, 1, 0, 1, 1, 1, 1, 0]);
        });
    };

    public encrypt(data: number[]) {
        console.log('Encrypting...');
        this.data = data;
        this.clientServer.post('encrypt', {
            data: this.data,
            secret_key: this.secretKey,
        }).then((result: AxiosResponse) => {
            return result.data;
        }).then((result: { data: { encrypted_data: string } }) => {
            this.encryptedData = result.data.encrypted_data;
            console.log('Encrypted data set');
            this.compute();
        });
    }

    public decrypt(data: string) {
        console.log('Decrypting...');
        this.clientServer.post('decrypt', {encrypted_data: data, secret_key: this.secretKey})
            .then((result: AxiosResponse) => {
                return result.data;
            }).then((result: { data: { result: number[] } }) => {
            this.decryptedData = result.data.result;
            console.log('Decrypted data set');
            this.validate();
        });
    }

    public compute() {
        console.log('Computing...');
        this.providerServer.post('compute', {
            cloud_key: this.cloudKey,
            encrypted_data: this.encryptedData
        }).then((result: AxiosResponse) => {
            return result.data;
        }).then((data: { data: { encrypted_result: string } }) => {
            console.log('Computed');
            this.decrypt(data.data.encrypted_result);
        });
    }

    public validate() {
        console.log(this.data);
        console.log(this.decryptedData);
    }
}