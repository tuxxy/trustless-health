import Web3 from 'web3';

export class TrustlessHealthClient {
    public web3: Web3;

    constructor() {
        this.web3 = new Web3(Web3.givenProvider || "ws://localhost:8546");
    }

    public getOfferings(): string {
        return 'Hello world';
    }


}