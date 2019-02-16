import * as React from 'react';
import * as ReactDOM from 'react-dom';
import { AppContainer } from 'react-hot-loader';
import { Provider } from 'react-redux';
import registerServiceWorker from './registerServiceWorker';

import Main from './components/Main';
import store from './configureStore';

ReactDOM.render(
    <AppContainer>
        <Provider store={store}>
            <Main/>
        </Provider>
    </AppContainer>,
    document.getElementById('root') as HTMLElement
);

registerServiceWorker();
