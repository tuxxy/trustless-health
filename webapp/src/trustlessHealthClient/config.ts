export interface ITxObj {
    nonce?: number;
    chainId: number;
    to: string;
    data?: string;
    value?: string;
    gasPrice: string;
    gasLimit: string;
    r?: string;
    s?: string;
    v?: string;
}

export interface ISignatureObj {
    r: string;
    s: string;
    v: string;
}

export class Config {
    public static chainId = 5777;
    public static gasLimit = 10000000; // 10 Mil Gas (10*10**6)
    public static gasPrice = 5000000000; // 5G Wei (5*10**9)
}