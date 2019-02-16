import axios from 'axios';
import Web3 from 'web3';
import {Config, ISignatureObj, ITxObj} from "./config";
import {LocalStorageWallet} from "./localStorageWallet";

const EthTx = require('ethereumjs-tx');
const contractJson = require('../contracts/TrustlessHealth.json');
const localWallet = new LocalStorageWallet();

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
        this.web3 = new Web3("ws://localhost:7545");
        this.contract = new this.web3.eth.Contract(this.contractABI, this.contractAddress);

        const testCategoryCreation = () => {
            return new Promise<void>(async (resolve, reject) => {
                try {
                    const password = '123';
                    const privateKeyAdmin = '0xca15bedb59f1aadc2181bbbc85ea0fd7a0ce48769ea981884a63767dae35c26a';

                    let accounts = await localWallet.loadAccounts(password);
                    if (accounts.length === 0) {
                        await localWallet.createAccount(password);
                        accounts = await localWallet.loadAccounts(password);
                    }
                    const selectedAccount = accounts[0];
                    console.log('All accounts', accounts);
                    console.log('Selected account', selectedAccount);

                    // Send eth
                    await this.sendEthFromPrivateKey(selectedAccount, privateKeyAdmin, 1);

                    // Get categories before creation
                    console.log('Categories before', this.getCategories());

                    // Create category
                    const txObj = this.unsignedCreateCategory('DNA Test');
                    const signatureObj = await localWallet.signTransaction(txObj, password, selectedAccount);
                    await this.sendSignedTransaction(txObj, signatureObj);

                    // Get categories after creation
                    console.log('Categories after', this.getCategories());

                    resolve();
                } catch (e) {
                    reject(e)
                }
            })
        };

        testCategoryCreation().then( () => {
            console.log('Completed test!');
        }).catch( error => {
            console.error(error);
        })

    }

    public sendEthFromPrivateKey(receivingAddress: string, privateKey: string, quantity: number): Promise<void> {
        return new Promise<void>(async (resolve, reject) => {
            const { numberToHex } = this.web3.utils;
            const txObject = {
                gasLimit: numberToHex(Config.gasLimit),
                gasPrice: numberToHex(Config.gasPrice),
                to: receivingAddress,
                value: quantity * 10 ** 18,
            };

            const { rawTransaction } = await this.web3.eth.accounts.signTransaction(txObject, privateKey);
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

    public sendSignedTransaction(rawTxObj: ITxObj, signObj: ISignatureObj): Promise<void> {
        return new Promise<void>(async (resolve, reject) => {
            const signedTxObj = {
                ...rawTxObj,
                r: signObj.r,
                s: signObj.s,
                v: signObj.v,
            };
            const tx = new EthTx(signedTxObj);
            const serializedTx = tx.serialize();

            this.web3.eth.sendSignedTransaction(`0x${serializedTx.toString('hex')}`)
                .on('receipt', (result) => {
                    resolve();
                })
                .on('error', (error: Error) => {
                    reject(error);
                });
        });
    }

    public unsignedCreateCategory(categoryName: string): ITxObj {
        const {numberToHex} = this.web3.utils;
        const encodedTx = this.contract.methods.createCategory(categoryName).encodeABI();

        return {
            chainId: Config.chainId,
            data: encodedTx,
            gasLimit: numberToHex(Config.gasLimit),
            gasPrice: numberToHex(Config.gasPrice),
            to: this.contractAddress
        };
    }

    public unsignedSubmitAnalysisOffering(
        host: string,
        paymentAddress: string,
        price: number,
        categoryId: number,
        title: string,
        description: string): ITxObj {
        const {numberToHex} = this.web3.utils;
        const encodedTx = this.contract.methods.submitAnalysisOffering(
            host, paymentAddress, price, categoryId, title, description).encodeABI();

        return {
            chainId: Config.chainId,
            data: encodedTx,
            gasLimit: numberToHex(Config.gasLimit),
            gasPrice: numberToHex(Config.gasPrice),
            to: this.contractAddress
        };
    }

    public unsignedPurchaseOffering(offeringId: number, categoryId: number): ITxObj {
        const {numberToHex} = this.web3.utils;
        const encodedTx = this.contract.methods.purchaseOffering(offeringId, categoryId).encodeABI();

        return {
            chainId: Config.chainId,
            data: encodedTx,
            gasLimit: numberToHex(Config.gasLimit),
            gasPrice: numberToHex(Config.gasPrice),
            to: this.contractAddress
        };
    }

    public categoryExists(categoryId: number): Promise<boolean> {
        return new Promise<boolean>(async (resolve, reject) => {
            try {
                resolve(await this.contract.methods.categoryExists(categoryId).call());
            } catch (e) {
                reject(e)
            }
        })
    }

    public getCategories(): Promise<string[]> {
        return new Promise<string[]>(async (resolve, reject) => {
            try {
                const categories = await this.contract.methods.getCategories().call();
                resolve(categories);
            } catch (e) {
                reject(e)
            }
        });
    }

    public getOfferings(categoryId: number): Promise<string[]> {
        return new Promise<string[]>(async (resolve, reject) => {
            try {
                const offerings = await this.contract.methods.getOfferings(categoryId).call();
                resolve(offerings)
            } catch (e) {
                reject(e)
            }
        });
    }

    public registerPurchasedOfferingListener(callback: (error: Error, result: any) => void): void {
        try {
            this.contract.events.purchasedOffering({
                filter: { }
            }, callback);
        } catch (e) {
            console.error(e);
        }
    };

    // ------------------------------------------ Methods for FHE ---------------------------------------------------

    public getKeyPair = () => {
        console.log('Getting key pair...');
        this.clientServer.post('generate_key_pair').then(result => {
            return result.data;
        }).then((data: { data: {} }) => {
            return data.data;
        }).then((data: { cloud_key: string, secret_key: string }) => {
            this.secretKey = data.secret_key;
            this.cloudKey = data.cloud_key;
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
        }).then(result => result.data).then((data1: { data: { encrypted_data: string } }) => {
            this.encryptedData = data1.data.encrypted_data;
            console.log('Encrypted data set');
            this.compute();
        });
    }

    public decrypt(data: string) {
        console.log('Decrypting...');
        this.clientServer.post('decrypt', {encrypted_data: data, secret_key: this.secretKey}).then(result => {
            return result.data;
        }).then((data1: { data: { result: number[] } }) => {
            this.decryptedData = data1.data.result;
            console.log('Decrypted data set');
            this.validate();
        });
    }

    public compute() {
        console.log('Computing...');
        this.providerServer.post('compute', {
            cloud_key: this.cloudKey,
            encrypted_data: this.encryptedData
        }).then(res => {
            return res.data;
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