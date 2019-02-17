import {combineReducers} from 'redux';
import {IMainState, mainReducer} from './mainReducer';
import {IShowCategoriesState, showCategoriesReducer} from "./showCategoriesReducer";
import {IShowOfferingsState, showOfferingsReducer} from "./showOfferingsReducer";

export interface IRootState {
    main: IMainState;
    showCategories: IShowCategoriesState;
    showOfferings: IShowOfferingsState;
}

export const rootReducer = combineReducers<IRootState | undefined>({
    main: mainReducer,
    showCategories: showCategoriesReducer,
    showOfferings: showOfferingsReducer,
});