import {combineReducers} from 'redux';
import {IMainState, mainReducer} from './mainReducer';

export interface IRootState {
    main: IMainState;
}

export const rootReducer = combineReducers<IRootState | undefined>({
    main: mainReducer,
});