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
    public static gasLimit = 100000;
    public static gasPrice = 50000;
}