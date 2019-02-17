import {Dispatch, Middleware, MiddlewareAPI} from 'redux';
import {RootActions} from "../actions";
import {IAnalysisOffering, IPurchasedOffer} from "./config";
import {TrustlessHealthClient} from "./trustlessHealthClient";

const trustlessHealthClient = new TrustlessHealthClient();

import {
    CREATE_CATEGORY,
    GET_CATEGORIES,
    GET_OFFERINGS,
    getCategoriesAction,
    getOfferingsAction,
    INITIALIZE_TRUSTLESS_HEALTH,
    receiveCategoriesAction,
    receiveDecryptedComputedDataAction,
    receiveOfferingsAction,
    START_ENCRYPTION_AND_TRANSFER,
    startEncryptionAndTransferAction,
    SUBMIT_ANALYSIS_OFFERING,
    SUBMIT_PURCHASE_OFFERING,
} from "./trustlessHealthActions";

export const trustlessHealthMiddleware: Middleware = ({dispatch, getState}: MiddlewareAPI) => (
    next: Dispatch
) => (action: RootActions) => {
    const {main} = getState();
    switch (action.type) {
        case INITIALIZE_TRUSTLESS_HEALTH:

            const purchasedOfferingCallback = (error: Error, result: IPurchasedOffer) => {
                if (!error) {
                    dispatch(startEncryptionAndTransferAction(main.dataToEncrypt, result.returnValues.offering.host));
                } else {
                    console.error('Purchase of offer failed!');
                }
            };
            trustlessHealthClient.RegisterPurchasedOfferingListener(purchasedOfferingCallback);
            break;

        case GET_CATEGORIES:
            trustlessHealthClient.GetCategories()
                .then((categories: string[]) => {
                    dispatch(receiveCategoriesAction(categories))
                })
                .catch((error) => {
                    console.error(error)
                });
            break;

        case GET_OFFERINGS:
            trustlessHealthClient.GetOfferings(action.categoryId)
                .then((offerings: IAnalysisOffering[]) => {
                    dispatch(receiveOfferingsAction(offerings))
                })
                .catch((error) => {
                    console.error(error)
                });
            break;

        case CREATE_CATEGORY:
            const createCategoryCallback = (error: Error, result: any) => {
                if (!error) {
                    dispatch(getCategoriesAction());
                } else {
                    console.error('Creating category failed.');
                }
            };
            trustlessHealthClient.CreateCategory(action.categoryName, createCategoryCallback);
            break;

        case SUBMIT_ANALYSIS_OFFERING:
            const submitAnalysisOfferingCallback = (error: Error, result: any) => {
                if (!error) {
                    dispatch(getOfferingsAction(action.categoryId))
                } else {
                    console.error('Creating analysis offering failed.');
                }
            };

            trustlessHealthClient.SubmitAnalysisOffering(
                action.host,
                action.paymentAddress,
                action.price,
                action.categoryId,
                action.title,
                action.description,
                submitAnalysisOfferingCallback
            );
            break;

        case SUBMIT_PURCHASE_OFFERING:
            const submitPurchaseOfferingCallback = (error: Error, result: any) => {
                if (error) {
                    console.error('Creating analysis offering failed.');
                    console.error(error);
                }
            };
            trustlessHealthClient.SubmitPurchaseOffering(
                action.offeringId, action.offeringPrice, action.categoryId, submitPurchaseOfferingCallback);
            break;

        case START_ENCRYPTION_AND_TRANSFER:
             new Promise(async(resolve) => {
                const keyPair = await trustlessHealthClient.getKeyPair();
                const data = main.dataToEncrypt;
                const encodedData = TrustlessHealthClient.encode(data);
                const encryptedData = await trustlessHealthClient.encrypt(encodedData, keyPair.secretKey);
                const computedData = await trustlessHealthClient.compute(action.host, encryptedData, keyPair.cloudKey);
                const decryptedData = await trustlessHealthClient.decrypt(computedData, keyPair.secretKey);
                resolve(decryptedData);
            }).then(decryptedComputedData => {
                console.log(decryptedComputedData)
                 dispatch(receiveDecryptedComputedDataAction(decryptedComputedData));
             });
            break;

        default:
            break;
    }
    return next(action);
};