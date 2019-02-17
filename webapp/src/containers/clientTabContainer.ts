import { connect } from 'react-redux';
import { bindActionCreators, Dispatch } from 'redux';
import { RootActions } from '../actions';
import ClientTab from "../components/clientTab";
import {IRootState} from "../reducers";

const mapStateToProps = (state: IRootState) => ({

});

const mapDispatchToProps = (dispatch: Dispatch<RootActions>) =>
    bindActionCreators(
        {
        },
        dispatch
    );

export default connect(mapStateToProps, mapDispatchToProps)(ClientTab);
