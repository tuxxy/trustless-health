import Web3 from 'web3';

/* tslint:disable */

export class TrustlessHealthClient {
    public web3: Web3;

    public contractAddress: string;
    public contractABI: any[] = [];
    public contract: any = {};

    constructor() {
        this.web3 = new Web3(Web3.givenProvider || "ws://localhost:8546");
    }

    public initialize(): void {
        this.contract = new this.web3.eth.Contract(this.contractABI, this.contractAddress);
    }

    public getCategories(): string[] {

        return [];
    }

    public getOfferings(): string {
        return 'Hello world';
    }

}