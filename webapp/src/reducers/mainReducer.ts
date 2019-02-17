import { Reducer } from 'redux';
import { RootActions } from '../actions';
import {TOGGLE_DARK_MODE} from "../actions/MainActions";
import {
    RECEIVE_DECRYPTED_COMPUTED_DATA,
    SUBMIT_PURCHASE_OFFERING
} from "../trustlessHealthClient/trustlessHealthActions";

export interface IMainState {
    darkMode: boolean;
    dnaToEncrypt: string;
}

const defaultState: IMainState = {
    darkMode: false,
    dnaToEncrypt: '',
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
                dnaToEncrypt: action.dataToEncrypt
            };
        case RECEIVE_DECRYPTED_COMPUTED_DATA:
            return {
                ...state,
                dnaToEncrypt: ''
            };
        default:
            return state;
    }
};
