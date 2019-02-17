import { Reducer } from 'redux';
import { RootActions } from '../actions';
import {CLOSE_COMPUTE_PROGRESS, TOGGLE_DARK_MODE} from "../actions/MainActions";
import {
    RECEIVE_DECRYPTED_COMPUTED_DATA,
    RECEIVE_ENCRYPTED_COMPUTED_DATA,
    RECEIVE_ENCRYPTED_DATA,
    START_ENCRYPTION_AND_TRANSFER,
    SUBMIT_PURCHASE_OFFERING
} from "../trustlessHealthClient/trustlessHealthActions";

export interface IMainState {
    darkMode: boolean;
    computeProgressOpen: boolean;
    dataToEncrypt: string;
    encryptedData: string;
    encryptedComputedData: string;
    decryptedComputedData: string;
}

const defaultState: IMainState = {
    computeProgressOpen: false,
    darkMode: false,
    dataToEncrypt: '',
    decryptedComputedData: '',
    encryptedComputedData: '',
    encryptedData: '',
};

export const mainReducer: Reducer<IMainState> = (
    state = defaultState,
    action: RootActions
) => {
    switch (action.type) {
        case TOGGLE_DARK_MODE:
            return {
                ...state,
                darkMode: !state.darkMode
            };
        case SUBMIT_PURCHASE_OFFERING:
            return {
                ...state,
                dataToEncrypt: action.dataToEncrypt
            };
        case START_ENCRYPTION_AND_TRANSFER:
            return {
                ...state,
                computeProgressOpen: true
            };
        case RECEIVE_ENCRYPTED_DATA:
            return {
                ...state,
                encryptedData: action.encryptedData
            };
        case RECEIVE_ENCRYPTED_COMPUTED_DATA:
            return {
                ...state,
                encryptedComputedData: action.encryptedComputedData
            };
        case RECEIVE_DECRYPTED_COMPUTED_DATA:
            return {
                ...state,
                decryptedComputedData: action.decryptedComputedData
            };
        case CLOSE_COMPUTE_PROGRESS:
            return {
                ...state,
                computeProgressOpen: false,
                dataToEncrypt: '',
                decryptedComputedData: '',
                encryptedComputedData: '',
                encryptedData: '',
            };
        default:
            return state;
    }
};
