import * as React from 'react';
import * as ReactDOM from 'react-dom';
import Main from '../containers/mainContainer';

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<Main />, div);
  ReactDOM.unmountComponentAtNode(div);
});
