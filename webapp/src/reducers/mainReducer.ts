import { Reducer } from 'redux';
import { RootActions } from '../actions';
import {TOGGLE_DARK_MODE} from "../actions/MainActions";

export interface IMainState {
    darkMode: boolean;
}

const defaultState: IMainState = {
    darkMode: false
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
        default:
            return state;
    }
};
