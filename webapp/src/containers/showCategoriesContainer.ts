import { connect } from 'react-redux';
import { bindActionCreators, Dispatch } from 'redux';
import { RootActions } from '../actions';
import {ShowCategories} from "../components/showCategories";
import {IRootState} from "../reducers";
import {getCategoriesAction} from "../trustlessHealthClient/trustlessHealthActions";

const mapStateToProps = (state: IRootState) => ({
    categories: state.showCategories.categories,
});

const mapDispatchToProps = (dispatch: Dispatch<RootActions>) =>
    bindActionCreators(
        {
            getCategoriesAction,
        },
        dispatch
    );

export default connect(mapStateToProps, mapDispatchToProps)(ShowCategories);
