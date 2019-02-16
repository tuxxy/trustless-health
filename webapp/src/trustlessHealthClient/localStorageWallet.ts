import Web3 from 'web3';

export class LocalStorageWallet {
    private readonly web3jsWalletKey = 'web3js_wallet';
    private web3: Web3;

    constructor() {
        this.web3 = new Web3("ws://localhost:7545");
    }

    public loadAccounts(password: string): Promise<string[]> {
        return new Promise<string[]>(async (resolve, reject) => {
            try {
                const Wallet =
                    this.web3.eth.accounts.wallet.load(password, this.web3jsWalletKey);

                const accounts: string[] = [];
                for (const address of Object.keys(Wallet)) {
                    accounts.push(address);
                }
                this.web3.eth.accounts.wallet.clear();
                resolve(accounts);

            } catch (e) {
                reject(e);
            }
        });
    }

    public createAccount(password: string): Promise<void> {
        return new Promise<void>(async (resolve, rejcet) => {
            try {
                this.web3.eth.accounts.wallet.create(1);
                this.web3.eth.accounts.wallet.save(password);
            } catch (e) {
                rejcet(e);
            }
        })
    }

}