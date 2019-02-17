import { Button, Card, InputGroup, Intent } from "@blueprintjs/core";
import * as React from "react";

interface IProps {
    createCategoryAction: (categoryName: string) => void;
}

interface IState {
    category: string;
}

export class NewCategory extends React.Component<IProps, IState> {

    public state = {
        category: '',
    };

    public onChange = (e: React.ChangeEvent<HTMLInputElement>) => {
        this.setState({
            category: e.target.value,
        });
    };

    public onClick = () => {
        const category = this.state.category;
        if (category === '') {
            return;
        }
        this.props.createCategoryAction(category);
    };

    public render() {
        const { category } = this.state;
        return (
            <>
                <Card>
                    <label className="bp3-label">
                        Category name
                        <InputGroup onChange={this.onChange} value={category}/>
                    </label>
                    {category && (
                        <Button intent={Intent.SUCCESS} onClick={this.onClick}>Create new category</Button>
                    )}
                </Card>
            </>
        )
    }
}

export default NewCategory;
