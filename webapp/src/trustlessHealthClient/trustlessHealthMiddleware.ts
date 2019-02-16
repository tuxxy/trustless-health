/* tslint:disable */

import {Dispatch, Middleware, MiddlewareAPI} from 'redux';
import {RootActions} from "../actions";
import {TrustlessHealthClient} from "./trustlessHealthClient";

const trustlessHealthClient = new TrustlessHealthClient();

import {
    INITIALIZE_TRUSTLESS_HEALTH,
    TRANSFER_ETH_FROM_PRIVATE_KEY
} from "./trustlessHealthActions";

export const trustlessHealthMiddleware: Middleware = ({dispatch, getState}: MiddlewareAPI) => (
    next: Dispatch
) => (action: RootActions) => {

    switch (action.type) {
        case INITIALIZE_TRUSTLESS_HEALTH:
            console.log(trustlessHealthClient.GetCategories());
            trustlessHealthClient.getKeyPair();
            break;

        case TRANSFER_ETH_FROM_PRIVATE_KEY:
            trustlessHealthClient.SendEthFromPrivateKey(action.receivingAddress, action.privateKey, action.quantity)
                .then(() => {
                    console.log('Transaction sent')
                })
                .catch((error) => {
                    console.error(error)
                });
            break;
        default:
            break;
    }
    return next(action);
};