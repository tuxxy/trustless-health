import { connect } from 'react-redux';
import { bindActionCreators, Dispatch } from 'redux';
import { RootActions } from '../actions';
import PrepareDNA from "../components/prepareDNA";
import { submitPurchaseOfferingAction } from "../trustlessHealthClient/trustlessHealthActions";

const mapDispatchToProps = (dispatch: Dispatch<RootActions>) =>
    bindActionCreators(
        {
            submitPurchaseOfferingAction,
        },
        dispatch
    );

export default connect(() => ({}), mapDispatchToProps)(PrepareDNA);
