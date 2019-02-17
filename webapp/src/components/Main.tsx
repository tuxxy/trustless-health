import {
    Alignment,
    Button,
    Classes,
    FocusStyleManager,
    Navbar,
    NavbarDivider,
    NavbarGroup,
    NavbarHeading,
    Position, Tab, Tabs, Tooltip,
} from "@blueprintjs/core";
import * as React from 'react';
import '../App.css';

FocusStyleManager.onlyShowFocusOnTabs(); // Do not show blue box around all buttons
import ClientTabContainer from '../containers/clientTabContainer';
import ProviderTabContainer from '../containers/providerTabContainer';
import {IMainState} from '../reducers/mainReducer';

interface IProps extends IMainState {
    initializeTrustlessHealthAction: () => void;
    toggleDarkModeAction: () => void;
}

interface IState {
    navbarTabId: string;
}

class Main extends React.Component<IProps, IState> {

    public state: IState = {
        navbarTabId: "home",
    };


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
                        <Tabs
                            animate={true}
                            id="navbar"
                            large={true}
                            onChange={this.handleNavbarTabChange}
                            selectedTabId={this.state.navbarTabId}
                        >
                            <Tab id="home" title="Home"/>
                            <Tab id="client" title="Client"/>
                            <Tab id="provider" title="Provider"/>
                        </Tabs>
                        <NavbarDivider/>
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
                    {(() => {
                        switch (this.state.navbarTabId) {
                            case 'client':
                                return (
                                    <ClientTabContainer/>
                                );
                            case 'provider':
                                return (
                                    <ProviderTabContainer/>
                                );
                            default:
                                return (
                                    <div>
                                        <p className="App-intro">
                                            Using Fully Homomorphic Encryption to provide patients
                                            with a choice of which company's health analysis tool to use.
                                        </p>
                                    </div>
                                );
                        }
                    })()}

                </div>
            </div>
        );
    }

    private handleNavbarTabChange = (navbarTabId: string) => this.setState({navbarTabId});
}

export default Main;
