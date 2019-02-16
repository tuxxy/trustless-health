import { Action, ActionCreator } from 'redux';

export const INITIALIZE_TRUSTLESS_HEALTH = 'INITIALIZE_TRUSTLESS_HEALTH';

export interface IInitializeTrustlessHealthAction extends Action {
    type: 'INITIALIZE_TRUSTLESS_HEALTH';
}

export const initializeTrustlessHealthAction: ActionCreator<IInitializeTrustlessHealthAction> = () => ({
    type: INITIALIZE_TRUSTLESS_HEALTH
});

export type TrustlessHealthActions =
    | IInitializeTrustlessHealthAction