import { connect } from 'react-redux';
import { bindActionCreators, Dispatch } from 'redux';

import { RootActions } from '../actions';
import {toggleDarkModeAction} from "../actions/MainActions";
import Main from '../components/main';
import { IRootState } from '../reducers';
import {
    initializeTrustlessHealthAction
} from "../trustlessHealthClient/trustlessHealthActions";

const mapStateToProps = (state: IRootState) => ({
    computeProgressOpen: state.main.computeProgressOpen,
    darkMode: state.main.darkMode,
    dataToEncrypt: state.main.dataToEncrypt,
    decryptedComputedData: state.main.decryptedComputedData,
    encryptedComputedData: state.main.encryptedComputedData,
    encryptedData: state.main.encryptedData,
});

const mapDispatchToProps = (dispatch: Dispatch<RootActions>) =>
    bindActionCreators(
        {
            initializeTrustlessHealthAction,
            toggleDarkModeAction,
        },
        dispatch
    );

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Main);
