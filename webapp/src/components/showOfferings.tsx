import {Card, Elevation, IPanelProps} from "@blueprintjs/core";
import * as React from "react";
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
                            className={'category'}
                        >
                            {offering}
                        </Card>)
                })}
            </div>
        )
    }

}