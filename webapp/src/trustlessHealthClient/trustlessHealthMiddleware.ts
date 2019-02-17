import axios from 'axios';
import {Dispatch, Middleware, MiddlewareAPI} from 'redux';
import {RootActions} from "../actions";
import {IAnalysisOffering} from "./config";
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
) => async(action: RootActions) => {

    switch (action.type) {
        case INITIALIZE_TRUSTLESS_HEALTH:

            const purchasedOfferingCallback = (error: Error, result: any) => {
                if (!error) {
                    //const host = result.returnValues.offering.host;
                    //dispatch(startEncryptionAndTransferAction())
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
                if (!error) {
                    dispatch(startEncryptionAndTransferAction())
                    console.log(result);
                } else {
                    console.error('Creating analysis offering failed.');
                    console.error(error);
                }
            };
            trustlessHealthClient.SubmitPurchaseOffering(
                action.offeringId, action.offeringPrice, action.categoryId, submitPurchaseOfferingCallback);
            break;

        case START_ENCRYPTION_AND_TRANSFER:
             new Promise(async(resolve) => {
                const keypair = await trustlessHealthClient.getKeyPair();
                const data = action.dataToEncrypt;
                const encodedData = TrustlessHealthClient.encode(data);
                const encryptedData = await trustlessHealthClient.encrypt(encodedData, keypair.secretKey);
                const request = axios.post('http://localhost:5001', { encrypted_data: encryptedData, cloud_key: keypair.cloudKey });
                resolve(request);
            }).then(decodedComputedData => {
                 dispatch(receiveDecryptedComputedDataAction(decodedComputedData));
             });
            break;

            /*
            const trustlessHealthClient = new TrustlessHealthClient();
            const keypair = await trustlessHealthClient.getKeyPair();
            const dna = this.state.DNA;
            const encodedDna = TrustlessHealthClient.encode(dna);
            console.log(encodedDna);
            const encryptedDna = await trustlessHealthClient.encrypt(encodedDna, keypair.secretKey);
            const computedDna = await trustlessHealthClient.compute(encryptedDna, keypair.cloudKey);
            const decyptedComputedDna = await trustlessHealthClient.decrypt(computedDna, keypair.secretKey);
            console.log(decodedComputedDna);
            */

        default:
            break;
    }
    return next(action);
};