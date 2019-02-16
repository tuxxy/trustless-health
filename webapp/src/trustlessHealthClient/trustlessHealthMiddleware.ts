/* tslint:disable */

import {Dispatch, Middleware, MiddlewareAPI} from 'redux';
import {RootActions} from "../actions";
import {INITIALIZE_TRUSTLESS_HEALTH} from "./trustlessHealthActions";
import {TrustlessHealthClient} from "./trustlessHealthClient";

const trustlessHealthClient = new TrustlessHealthClient();

export const trustlessHealthMiddleware: Middleware = ({dispatch, getState}: MiddlewareAPI) => (
    next: Dispatch
) => (action: RootActions) => {

    switch (action.type) {
        case INITIALIZE_TRUSTLESS_HEALTH:
            console.log(trustlessHealthClient.getOfferings());
            break;
        default:
            break;
    }
    return next(action);
};