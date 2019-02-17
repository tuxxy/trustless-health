import {combineReducers} from 'redux';
import {IMainState, mainReducer} from './mainReducer';
import {IShowCategoriesState, showCategoriesReducer} from "./showCategoriesReducer";

export interface IRootState {
    main: IMainState;
    showCategories: IShowCategoriesState;
}

export const rootReducer = combineReducers<IRootState | undefined>({
    main: mainReducer,
    showCategories: showCategoriesReducer,
});