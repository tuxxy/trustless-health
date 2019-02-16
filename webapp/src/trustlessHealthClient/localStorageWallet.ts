import Web3 from 'web3';
import {ISignatureObj, ITxObj} from "./config";

export class LocalStorageWallet {
    private web3: Web3;

    constructor() {
        this.web3 = new Web3("ws://localhost:7545");
    }

    public loadAccounts(password: string): Promise<string[]> {
        return new Promise<string[]>(async (resolve, reject) => {
            try {
                const Wallet = this.web3.eth.accounts.wallet.load(password);

                const accounts: string[] = [];
                // @ts-ignore
                for (let i = 0; i < Wallet.length; i++) {
                    accounts[i] = Wallet[i].address;
                }
                this.web3.eth.accounts.wallet.clear();
                resolve(accounts);
            } catch (e) {
                reject(e);
            }
        });
    }

    public createAccount(password: string): Promise<void> {
        return new Promise<void>(async (resolve, reject) => {
            try {
                this.web3.eth.accounts.wallet.create(1);
                this.web3.eth.accounts.wallet.save(password);
                this.web3.eth.accounts.wallet.clear();
                resolve();
            } catch (e) {
                reject(e);
            }
        })
    }

    public signTransaction(txObj: ITxObj, password: string, address: string): Promise<ISignatureObj> {
        return new Promise<ISignatureObj>(async (resolve, reject) => {
            try {
                const Wallet = this.web3.eth.accounts.wallet.load(password);
                const {r, s, v} = await this.web3.eth.accounts.signTransaction(txObj, Wallet[address].privateKey);
                this.web3.eth.accounts.wallet.clear();
                resolve({r, s, v})
            } catch (e) {
                reject(e)
            }
        })
    }


}