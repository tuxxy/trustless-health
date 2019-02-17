import { connect } from 'react-redux';
import { bindActionCreators, Dispatch } from 'redux';
import { RootActions } from '../actions';
import NewCategory from "../components/newCategory";
import { createCategoryAction } from "../trustlessHealthClient/trustlessHealthActions";

const mapDispatchToProps = (dispatch: Dispatch<RootActions>) =>
    bindActionCreators(
        {
            createCategoryAction,
        },
        dispatch
    );

export default connect(() => ({}), mapDispatchToProps)(NewCategory);
