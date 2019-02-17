import {Button, Card, InputGroup, Intent} from "@blueprintjs/core";
import * as React from "react";
import NewCategoryContainer from "../containers/newCategoryContainer";

interface IProps {
    categories: string[];
    getCategoriesAction: () => void;
    submitAnalysisOfferingAction: (
        host: string,
        paymentAddress: string,
        price: number,
        categoryId: number,
        title: string,
        description: string) => void;
}

interface IState {
    categoryIdSelected: number;
    title: string;
    description: string;
    host: string;
    paymentAddress: string;
    price: number;
}

export class ProviderTab extends React.Component<IProps, IState> {

    public state: IState = {
        categoryIdSelected: 0,
        description: '',
        host: '',
        paymentAddress: '',
        price: 1,
        title: '',
    };

    public componentDidMount(): void {
        this.props.getCategoriesAction();
    }

    public render() {
        const {categoryIdSelected, title, description, host, paymentAddress, price} = this.state;
        const {categories} = this.props;
        return (
            <div>
                <div className={'widget-wrapper'}>
                    <NewCategoryContainer/>
                </div>
                <div className={'widget-wrapper'}>
                    <Card>
                        <h4>Submit Analysis Offering</h4>
                        {categories.length > 0 ?
                            <>
                                <label className="bp3-label">
                                    Category
                                    <br/>
                                    <select
                                        value={categoryIdSelected}
                                        onChange={this.handleAccountSelect}
                                        style={{width: '25%'}}
                                    >
                                        {categories.map((name, index) => (
                                            <option key={index} value={index}>
                                                {name}
                                            </option>
                                        ))}
                                    </select>
                                </label>
                                <label className="bp3-label">
                                    Title
                                    <InputGroup onChange={this.onChangeTitle} value={title}/>
                                </label>
                                <label className="bp3-label">
                                    Description
                                    <InputGroup onChange={this.onChangeDescription} value={description}/>
                                </label>
                                <label className="bp3-label">
                                    Address to receive payments
                                    <InputGroup onChange={this.onChangePaymentAddress} value={paymentAddress}/>
                                </label>
                                <label className="bp3-label">
                                    Host
                                    <InputGroup onChange={this.onChangeHost} value={host}/>
                                </label>
                                <label className="bp3-label">
                                    Price
                                    <InputGroup onChange={this.onChangePrice} value={price.toString()}/>
                                </label>

                                <Button
                                    intent={Intent.PRIMARY}
                                    onClick={this.handleOfferSubmit}
                                >
                                    Submit Analysis Offer
                                </Button>

                            </> :
                            <>
                                <p>Please create a category</p>
                            </>
                        }
                    </Card>
                </div>
            </div>
        )
    }

    private handleAccountSelect = (e: React.ChangeEvent<HTMLSelectElement>) => {
        this.setState({categoryIdSelected: +e.target.value});
    };

    private onChangeTitle = (e: React.ChangeEvent<HTMLInputElement>) => {
        this.setState({title: e.target.value});
    };

    private onChangeDescription = (e: React.ChangeEvent<HTMLInputElement>) => {
        this.setState({description: e.target.value});
    };

    private onChangeHost = (e: React.ChangeEvent<HTMLInputElement>) => {
        this.setState({host: e.target.value});
    };

    private onChangePaymentAddress = (e: React.ChangeEvent<HTMLInputElement>) => {
        this.setState({paymentAddress: e.target.value});
    };

    private onChangePrice = (e: React.ChangeEvent<HTMLInputElement>) => {
        this.setState({price: +e.target.value});
    };

    private handleOfferSubmit = () => {
        const {categoryIdSelected, title, description, host, paymentAddress, price} = this.state;
        this.props.submitAnalysisOfferingAction(host, paymentAddress, price, categoryIdSelected, title, description);
    };
}

export default ProviderTab;
