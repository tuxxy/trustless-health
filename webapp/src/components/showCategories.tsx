import {Card, Elevation, IPanelProps} from "@blueprintjs/core";
import * as React from "react";

interface IState {
    categories: string[];
}

export class ShowCategories extends React.Component<IPanelProps, IState> {

    public state = {
        categories: ['Cat 1', 'Cat 2', 'Cat 3', 'Cat 4', 'Cat 5']
    };

    public onClick = (index: number) => {
        this.props.openPanel({
            component: ShowCategories,
            title: 'HI!',
        });
    };

    public render() {
        const { categories } = this.state;
        return (
            <Card elevation={Elevation.TWO} className={'category-wrapper'} title={'Provider Categories'}>
                {categories.map((category: string, idx: number) => {
                    return (
                        <Card
                            interactive={true}
                            elevation={Elevation.ONE}
                            key={idx}
                            className={'category'}
                            onClick={this.onClick.bind(this, idx)}
                        >
                            {category}
                        </Card>)
                })}
            </Card>
        )
    }

}