import Web3 from 'web3';

const contractJson = require('../contracts/TrustlessHealth.json');

export class TrustlessHealthClient {
    public web3: Web3;

    public contractAddress = contractJson.networks["5777"].address;
    public contractABI = contractJson.abi;
    public contract: any = {};

    constructor() {
        this.initialize();
    }

    public initialize(): void {
        this.web3 = new Web3("ws://localhost:7545");
        this.contract = new this.web3.eth.Contract(this.contractABI, this.contractAddress);
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

}