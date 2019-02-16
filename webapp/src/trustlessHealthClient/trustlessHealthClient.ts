import axios from 'axios';
import Web3 from 'web3';
import {Config, ISignatureObj, ITxObj} from "./config";

const EthTx = require('ethereumjs-tx');
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
        this.web3 = new Web3("ws://localhost:7545");
        this.contract = new this.web3.eth.Contract(this.contractABI, this.contractAddress);
    }

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

    public createUnsignedSubmitAnalysisOffering(
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