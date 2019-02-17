import { connect } from 'react-redux';
import { bindActionCreators, Dispatch } from 'redux';
import { RootActions } from '../actions';
import NewCategory from "../components/newCategory";
import {IRootState} from "../reducers";
import { createCategoryAction } from "../trustlessHealthClient/trustlessHealthActions";

const mapStateToProps = (state: IRootState) => ({
    categories: state.showCategories.categories,
});


const mapDispatchToProps = (dispatch: Dispatch<RootActions>) =>
    bindActionCreators(
        {
            createCategoryAction,
        },
        dispatch
    );

export default connect(mapStateToProps, mapDispatchToProps)(NewCategory);
