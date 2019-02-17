import { connect } from 'react-redux';
import { bindActionCreators, Dispatch } from 'redux';
import { RootActions } from '../actions';
import { ShowOfferings } from "../components/showOfferings";
import {IRootState} from "../reducers";
import { getOfferingsAction } from "../trustlessHealthClient/trustlessHealthActions";

const mapStateToProps = (state: IRootState) => ({
    offerings: state.showOfferings.offerings,
});

const mapDispatchToProps = (dispatch: Dispatch<RootActions>) =>
    bindActionCreators(
        {
            getOfferingsAction
        },
        dispatch
    );

export default connect(mapStateToProps, mapDispatchToProps)(ShowOfferings);
