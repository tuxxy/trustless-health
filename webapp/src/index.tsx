import * as React from 'react';
import * as ReactDOM from 'react-dom';
import { AppContainer } from 'react-hot-loader';
import { Provider } from 'react-redux';
import './App.css'
import registerServiceWorker from './registerServiceWorker';

import store from './configureStore';
import MainContainer from './containers/mainContainer';

ReactDOM.render(
    <AppContainer>
        <Provider store={store}>
            <MainContainer/>
        </Provider>
    </AppContainer>,
    document.getElementById('root') as HTMLElement
);

registerServiceWorker();
