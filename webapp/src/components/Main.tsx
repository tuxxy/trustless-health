import {
    Alignment,
    Button, Card,
    Classes,
    FocusStyleManager,
    Navbar,
    NavbarDivider,
    NavbarGroup,
    NavbarHeading,
    PanelStack, Position, Tooltip,
} from "@blueprintjs/core";
import * as React from 'react';
import '../App.css';
import NewCategoryContainer from '../containers/newCategoryContainer';
import ShowCategoriesContainer from "../containers/showCategoriesContainer";
import PrepareDNA from "./PrepareDNA";

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
        const {darkMode} = this.props;
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
                        <Tooltip
                            content={`Change to ${darkMode ? 'light' : 'dark'} theme`}
                            position={Position.RIGHT}>
                            <Button
                                className={Classes.MINIMAL}
                                icon={darkMode ? 'lightbulb' : 'moon'}
                                text=""
                                onClick={this.props.toggleDarkModeAction}
                            />
                        </Tooltip>
                    </NavbarGroup>
                </Navbar>
                <div className={'page-wrapper'}>
                    <p className="App-intro">
                        Using Fully Homomorphic Encryption to provide patients
                        with a choice of which company's health analysis tool to use.
                    </p>
                    <div className={'widget-wrapper'}>
                        <PrepareDNA />
                    </div>
                    <div className={'widget-wrapper'}>
                        <NewCategoryContainer/>
                    </div>
                    <div className={'widget-wrapper'}>
                        <Card>
                            <PanelStack initialPanel={{ component: ShowCategoriesContainer, title: "Choose category" }} />
                        </Card>
                    </div>
                </div>
            </div>
        );
    }
}

export default Main;
