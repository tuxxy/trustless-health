import {Card, Elevation, IPanelProps} from "@blueprintjs/core";
import * as React from "react";
import PrepareDNAContainer from "../containers/prepareDNAContainer";
import {IShowCategoriesState} from "../reducers/showCategoriesReducer";
import {IAnalysisOffering} from "../trustlessHealthClient/config";

interface IProps extends IShowCategoriesState {
    getOfferingsAction: (categoryId: number) => void;
    categoryId: number;
    offerings: IAnalysisOffering[];
}

export class ShowOfferings extends React.Component<IPanelProps & IProps> {

    public componentDidMount(): void {
        this.props.getOfferingsAction(this.props.categoryId);
    }

    public onClick = (index: number) => {
        const offering = this.props.offerings[index];
        this.props.openPanel({
            component: PrepareDNAContainer,
            props: {
                categoryId: this.props.categoryId,
                offeringId: index,
                offeringPrice: offering.price,
            },
            title: offering.title,
        });
    };

    public render() {
        const { offerings } = this.props;
        return (
            <div className={'panel-wrapper'}>
                {offerings.map((offering: IAnalysisOffering, idx: number) => {
                    return (
                        <Card
                            interactive={true}
                            elevation={Elevation.ONE}
                            key={idx}
                            className={'panel-card-wide'}
                            onClick={this.onClick.bind(this, idx)}
                        >
                            <h3 className={'offering-title'}>{offering.title} <span>Price: {offering.price / 10**18} ETH</span></h3>
                            <p>{offering.description}</p>
                            <p>Payment address: {offering.paymentAddress}</p>
                        </Card>)
                })}
                {offerings.length === 0 && (
                    <Card>
                        There are currently no offerings in this category.
                    </Card>
                )}
            </div>
        )
    }

}