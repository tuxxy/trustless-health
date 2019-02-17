export interface ITxObj {
    nonce?: number;
    chainId: number;
    to: string;
    from: string;
    data?: string;
    value?: string;
    gasPrice: string;
    gasLimit: string;
    r?: string;
    s?: string;
    v?: string;
}

export interface IAnalysisOffering {
    host: string;
    paymentAddress: string;
    price: number;
    categoryId: number;
    title: string;
    description: string;
    isValid: boolean;
}

export interface IPurchasedOffer {
    returnValues: {
        offering: {
            host: string
        },
        sender: string;
    }
}

export type Callback = (error: Error, result: any) => void;

export class Config {
    public static chainId = 5777;
    public static gasLimit = 5000000;
    public static gasPrice = 50000;
}