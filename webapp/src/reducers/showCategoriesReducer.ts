import { Reducer } from 'redux';
import { RootActions } from '../actions';
import { RECEIVE_CATEGORIES } from "../trustlessHealthClient/trustlessHealthActions";

export interface IShowCategoriesState {
    categories: string[];
}

const defaultState: IShowCategoriesState = {
    categories: [],
};

export const showCategoriesReducer: Reducer<IShowCategoriesState> = (
    state = defaultState,
    action: RootActions
) => {
    switch (action.type) {
        case RECEIVE_CATEGORIES:
            return {
                ...state,
                categories: action.categories
            };
        default:
            return state;
    }
};
