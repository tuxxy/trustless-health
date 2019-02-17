import { connect } from 'react-redux';
import { bindActionCreators, Dispatch } from 'redux';
import { RootActions } from '../actions';
import ProviderTab from "../components/providerTab";
import {IRootState} from "../reducers";
import {
    getCategoriesAction,
    submitAnalysisOfferingAction
} from "../trustlessHealthClient/trustlessHealthActions";

const mapStateToProps = (state: IRootState) => ({
    categories: state.showCategories.categories,
});

const mapDispatchToProps = (dispatch: Dispatch<RootActions>) =>
    bindActionCreators(
        {
            getCategoriesAction,
            submitAnalysisOfferingAction
        },
        dispatch
    );

export default connect(mapStateToProps, mapDispatchToProps)(ProviderTab);
