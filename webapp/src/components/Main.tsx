import * as React from 'react';
import '../App.css'

import {
    Alignment,
    Button,
    Classes,
    FocusStyleManager,
    Navbar,
    NavbarDivider,
    NavbarGroup,
    NavbarHeading,
} from "@blueprintjs/core";

FocusStyleManager.onlyShowFocusOnTabs(); // Do not show blue box around all buttons

import {IMainState} from "../reducers/mainReducer";

interface IProps extends IMainState {
    initializeTrustlessHealthAction: () => void;
    toggleDarkModeAction: () => void;
}

class Main extends React.Component<IProps> {

    public componentDidMount(): void {
        this.props.initializeTrustlessHealthAction();
    }

    public componentDidUpdate(): void {
        document.body.className = this.props.darkMode ? 'Core-dark bp3-dark' : 'Core';
    }

    public render() {
        return (
            <div className="App">
                <Navbar>
                    <NavbarGroup align={Alignment.LEFT}>
                        <NavbarHeading><h3>Trustless Health</h3></NavbarHeading>
                    </NavbarGroup>
                    <NavbarGroup align={Alignment.RIGHT}>
                        <NavbarDivider/>
                        <Button className={Classes.MINIMAL} icon="home" text="Home"/>
                        <Button className={Classes.MINIMAL} icon="settings" text="Options"/>
                        <Button
                            className={Classes.MINIMAL}
                            icon="lightbulb"
                            text="Dark Mode"
                            onClick={this.props.toggleDarkModeAction}
                        />
                    </NavbarGroup>
                </Navbar>
                <p className="App-intro">
                    Using Fully Homomorphic Encryption to provide patients
                    with a choice of which company's health analysis tool to use.
                </p>
            </div>
        );
    }
}

export default Main;
