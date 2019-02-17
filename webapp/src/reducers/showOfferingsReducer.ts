import { Reducer } from 'redux';
import { RootActions } from '../actions';
import { IAnalysisOffering } from "../trustlessHealthClient/config";
import { RECEIVE_OFFERINGS} from "../trustlessHealthClient/trustlessHealthActions";

export interface IShowOfferingsState {
    offerings: IAnalysisOffering[];
}

const defaultState: IShowOfferingsState = {
    offerings: [],
};

export const showOfferingsReducer: Reducer<IShowOfferingsState> = (
    state = defaultState,
    action: RootActions
) => {
    switch (action.type) {
        case RECEIVE_OFFERINGS:
            return {
                ...state,
                offerings: action.offerings
            };
        default:
            return state;
    }
};
