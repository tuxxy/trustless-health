import * as React from 'react';
import '../App.css'

import {
    Alignment,
    Button,
    Classes,
    FocusStyleManager,
    Intent,
    Navbar,
    NavbarDivider,
    NavbarGroup,
    NavbarHeading,
} from "@blueprintjs/core";
FocusStyleManager.onlyShowFocusOnTabs(); // Do not show blue box around all buttons

import {IMainState} from "../reducers/mainReducer";

interface IProps extends IMainState {
    toggleDarkModeAction: () => void;
}

class Main extends React.Component<IProps> {

    public componentDidUpdate(): void {
        document.body.className = this.props.darkMode ? 'Core-dark bp3-dark' : 'Core';
    }

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
                        <Button
                            className={Classes.MINIMAL}
                            icon="lightbulb"
                            text="Dark Mode"
                            onClick={this.props.toggleDarkModeAction}
                        />
                    </NavbarGroup>
                </Navbar>
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
