import {Action, ActionCreator} from 'redux';
import {IAnalysisOffering} from "./config";

export const INITIALIZE_TRUSTLESS_HEALTH = 'INITIALIZE_TRUSTLESS_HEALTH';
export const GET_CATEGORIES = 'GET_CATEGORIES';
export const RECEIVE_CATEGORIES = 'RECEIVE_CATEGORIES';
export const GET_OFFERINGS = 'GET_OFFERINGS';
export const RECEIVE_OFFERINGS = 'RECEIVE_OFFERINGS';
export const CREATE_CATEGORY = 'CREATE_CATEGORY';
export const SUBMIT_ANALYSIS_OFFERING = 'SUBMIT_ANALYSIS_OFFERING';
export const SUBMIT_PURCHASE_OFFERING = 'SUBMIT_PURCHASE_OFFERING';

export interface IInitializeTrustlessHealthAction extends Action {
    type: 'INITIALIZE_TRUSTLESS_HEALTH';
}

export const initializeTrustlessHealthAction: ActionCreator<IInitializeTrustlessHealthAction> = () => ({
    type: INITIALIZE_TRUSTLESS_HEALTH
});

export interface IGetCategoriesAction extends Action {
    type: 'GET_CATEGORIES';
}

export const getCategoriesAction: ActionCreator<IGetCategoriesAction> = () => ({
    type: GET_CATEGORIES
});

export interface IReceiveCategoriesAction extends Action {
    type: 'RECEIVE_CATEGORIES';
    categories: string[];
}

export const receiveCategoriesAction: ActionCreator<IReceiveCategoriesAction> = (categories) => ({
    categories,
    type: RECEIVE_CATEGORIES,
});

export interface IGetOfferingsAction extends Action {
    type: 'GET_OFFERINGS';
    categoryId: number;
}

export const getOfferingsAction: ActionCreator<IGetOfferingsAction> = (categoryId) => ({
    categoryId,
    type: GET_OFFERINGS,
});

export interface IReceiveOfferingsAction extends Action {
    type: 'RECEIVE_OFFERINGS';
    offerings: IAnalysisOffering[];
}

export const receiveOfferingsAction: ActionCreator<IReceiveOfferingsAction> = (offerings) => ({
    offerings,
    type: RECEIVE_OFFERINGS,
});

export interface ICreateCategoryAction extends Action {
    type: 'CREATE_CATEGORY';
    categoryName: string;
}

export const createCategoryAction: ActionCreator<ICreateCategoryAction> = (categoryName) => ({
    categoryName,
    type: CREATE_CATEGORY,
});

export interface ISubmitAnalysisOfferingAction extends Action {
    type: 'SUBMIT_ANALYSIS_OFFERING';
    host: string;
    paymentAddress: string;
    price: number;
    categoryId: number;
    title: string;
    description: string;
}

export const submitAnalysisOfferingAction: ActionCreator<ISubmitAnalysisOfferingAction> = (
    host, paymentAddress, price, categoryId, title, description) => ({
    categoryId,
    description,
    host,
    paymentAddress,
    price,
    title,
    type: SUBMIT_ANALYSIS_OFFERING,
});

export interface ISubmitPurchaseOfferingAction extends Action {
    type: 'SUBMIT_PURCHASE_OFFERING';
    offeringId: number;
    offeringPrice: number;
    categoryId: number;
}

export const submitPurchaseOfferingAction: ActionCreator<ISubmitPurchaseOfferingAction> = (offeringId, offeringPrice, categoryId) => ({
   categoryId,
   offeringId,
   offeringPrice,
   type: SUBMIT_PURCHASE_OFFERING,
});

export type TrustlessHealthActions =
    | IInitializeTrustlessHealthAction
    | IGetCategoriesAction
    | IReceiveCategoriesAction
    | IGetOfferingsAction
    | IReceiveOfferingsAction
    | ICreateCategoryAction
    | ISubmitAnalysisOfferingAction
    | ISubmitPurchaseOfferingAction;