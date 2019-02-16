import {applyMiddleware, createStore, Store} from 'redux';
import { composeWithDevTools } from 'redux-devtools-extension';
import logger from 'redux-logger'
import reduxThunk from 'redux-thunk';
import {IRootState, rootReducer} from './reducers';

const configureStore = (initialState?: IRootState): Store<IRootState | undefined> => {
    const middlewares = [reduxThunk, logger];
    const enhancer = composeWithDevTools(applyMiddleware(...middlewares));
    return createStore(rootReducer, initialState, enhancer);
};

const store = configureStore();

export default store;
