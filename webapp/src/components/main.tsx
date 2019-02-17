import {
    Alignment,
    Button,
    Classes,
    FocusStyleManager, Intent,
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
import ComputeProgressContainer from '../containers/computeProgressContainer';
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
                                    <>
                                        <div style={{textAlign: 'center', marginTop: '5%'}}>
                                            <h1 style={{fontSize: '2.5em'}}>Decentralizing Health Care</h1>
                                            <p style={{fontSize: '1.5em'}}>Utilizing the power of Fully Homomorphic Encryption to provide health analysis without revealing highly sensitive data.</p>
                                            <Button
                                                onClick={this.handleGoToClient}
                                                minimal={true}
                                                large={true}
                                                intent={Intent.PRIMARY}
                                                icon="graph"
                                            >Get Started!</Button>
                                        </div>
                                        <div className="home-background"/>
                                    </>
                                );
                        }
                    })()}

                </div>
                <ComputeProgressContainer/>
            </div>
        );
    }

    private handleGoToClient = () => {
        this.setState({navbarTabId: 'client'});
    };

    private handleNavbarTabChange = (navbarTabId: string) => this.setState({navbarTabId});
}

export default Main;
