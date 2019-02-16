import {applyMiddleware, createStore, Store} from 'redux';
import reduxThunk from 'redux-thunk';
import {IRootState, rootReducer} from './reducers';

const configureStore = (initialState?: IRootState): Store<IRootState | undefined> => {
    const middlewares = [reduxThunk];

    return createStore(rootReducer, initialState, applyMiddleware(...middlewares));
};

const store = configureStore();

export default store;
