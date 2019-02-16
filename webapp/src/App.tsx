import * as React from 'react';
import './App.css';

import {Button, Intent } from "@blueprintjs/core";
import logo from './logo.svg';

class App extends React.Component {


    public render() {
        return (
            <div className="App">
                <header className="App-header">
                    <img src={logo} className="App-logo" alt="logo"/>
                    <h1 className="App-title">Welcome to Trustless Health</h1>
                </header>
                <p className="App-intro">
                    To get started, edit <code>src/App.tsx</code> and save to reload.
                    <Button onClick={this.handleClick} intent={Intent.PRIMARY}>Click</Button>
                </p>
            </div>
        );
    }

    private handleClick() {
        alert('Hello world!');
    }
}

export default App;
