import { connect } from 'react-redux';
import { bindActionCreators, Dispatch } from 'redux';

import { RootActions } from '../actions';
import {toggleDarkModeAction} from "../actions/MainActions";
import Main from '../components/Main';
import { IRootState } from '../reducers';
import {initializeTrustlessHealthAction, transferEthFromPrivateKey} from "../trustlessHealthClient/trustlessHealthActions";

const mapStateToProps = (state: IRootState) => ({
    darkMode: state.main.darkMode,
});

const mapDispatchToProps = (dispatch: Dispatch<RootActions>) =>
    bindActionCreators(
        {
            initializeTrustlessHealthAction,
            toggleDarkModeAction,
            transferEthFromPrivateKey,
        },
        dispatch
    );

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Main);
