import {Action, ActionCreator} from 'redux';

export const INITIALIZE_TRUSTLESS_HEALTH = 'INITIALIZE_TRUSTLESS_HEALTH';
export const TRANSFER_ETH_FROM_PRIVATE_KEY = 'TRANSFER_ETH_FROM_PRIVATE_KEY';
export const CREATE_CATEGORY = 'CREATE_CATEGORY';
export const SUBMIT_ANALYSIS_OFFERING = 'SUBMIT_ANALYSIS_OFFERING';
export const SUBMIT_PURCHASE_OFFERING = 'SUBMIT_PURCHASE_OFFERING';
export const GET_CATEGORIES = 'GET_CATEGORIES';
export const GET_OFFERINGS = 'GET_OFFERINGS';

export interface IInitializeTrustlessHealthAction extends Action {
    type: 'INITIALIZE_TRUSTLESS_HEALTH';
}

export const initializeTrustlessHealthAction: ActionCreator<IInitializeTrustlessHealthAction> = () => ({
    type: INITIALIZE_TRUSTLESS_HEALTH
});

export interface ITransferEthFromPrivateKeyAction extends Action {
    type: 'TRANSFER_ETH_FROM_PRIVATE_KEY';
    quantity: number;
    receivingAddress: string;
    privateKey: string;
}

export const transferEthFromPrivateKey: ActionCreator<ITransferEthFromPrivateKeyAction> = (quantity, receivingAddress, privateKey) => ({
    privateKey,
    quantity,
    receivingAddress,
    type: TRANSFER_ETH_FROM_PRIVATE_KEY,
});

export interface ICreateCategoryAction extends Action {
    type: 'CREATE_CATEGORY';
    fromAddress: string;
    categoryName: string;
}

export const createCategoryAction: ActionCreator<ICreateCategoryAction> = (fromAddress, categoryName, callback) => ({
    categoryName,
    fromAddress,
    type: CREATE_CATEGORY,
});

export interface ISubmitAnalysisOffering extends Action {
    type: 'SUBMIT_ANALYSIS_OFFERING';
    fromAddress: string;
    host: string;
    paymentAddress: string;
    price: number;
    categoryId: number;
    title: string;
    description: string;
}

export


export type TrustlessHealthActions =
    | IInitializeTrustlessHealthAction
    | ITransferEthFromPrivateKeyAction
    | ICreateCategoryAction;