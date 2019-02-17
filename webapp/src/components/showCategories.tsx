import {Card, Elevation, IPanelProps} from "@blueprintjs/core";
import * as React from "react";
import ShowOfferingsContainer from "../containers/showOfferingsContainer";
import {IShowCategoriesState} from "../reducers/showCategoriesReducer";

interface IProps extends IShowCategoriesState {
    getCategoriesAction: () => void;
}

export class ShowCategories extends React.Component<IPanelProps & IProps> {

    public componentDidMount(): void {
        this.props.getCategoriesAction();
    }

    public onClick = (index: number) => {
        const category = this.props.categories[index];
        this.props.openPanel({
            component: ShowOfferingsContainer,
            props: {
                categoryId: index,
            },
            title: `Offerings in ${category}`,
        });
    };

    public render() {
        const { categories } = this.props;
        return (
            <div className={'panel-wrapper'}>
                {categories.map((category: string, idx: number) => {
                    return (
                        <Card
                            interactive={true}
                            elevation={Elevation.ONE}
                            key={idx}
                            className={'panel-card'}
                            onClick={this.onClick.bind(this, idx)}
                        >
                            {category}
                        </Card>)
                })}
            </div>
        )
    }

}