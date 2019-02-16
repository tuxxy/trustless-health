import * as React from 'react';
import '../App.css'

import {
    Alignment,
    Button,
    Classes,
    Intent,
    Navbar,
    NavbarDivider,
    NavbarGroup,
    NavbarHeading,
} from "@blueprintjs/core";
import logo from '../logo.svg';

class Main extends React.Component {


    public render() {
        return (
            <div className="App">
                <Navbar>
                    <NavbarGroup align={Alignment.LEFT}>
                        <NavbarHeading>Trustless Health</NavbarHeading>
                    </NavbarGroup>
                    <NavbarGroup align={Alignment.RIGHT}>
                        <NavbarDivider/>
                        <Button className={Classes.MINIMAL} icon="home" text="Home"/>
                        <Button className={Classes.MINIMAL} icon="settings" text="Options"/>
                        <Button className={Classes.MINIMAL} icon="lightbulb" text="Dark Mode"/>
                    </NavbarGroup>
                </Navbar>
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

export default Main;
