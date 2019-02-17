import { connect } from 'react-redux';
import { bindActionCreators, Dispatch } from 'redux';

import { RootActions } from '../actions';
import {closeComputeProgressAction} from "../actions/MainActions";
import ComputeProgress from "../components/computeProgress";
import { IRootState } from '../reducers';

const mapStateToProps = (state: IRootState) => ({
    computeProgressOpen: state.main.computeProgressOpen,
    dataToEncrypt: state.main.dataToEncrypt,
    decryptedComputedData: state.main.decryptedComputedData,
    encryptedComputedData: state.main.encryptedComputedData,
    encryptedData: state.main.encryptedData,
});

const mapDispatchToProps = (dispatch: Dispatch<RootActions>) =>
    bindActionCreators(
        {
            closeComputeProgressAction
        },
        dispatch
    );

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(ComputeProgress);
