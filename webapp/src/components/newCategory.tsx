import {Button, Card, InputGroup, Intent} from "@blueprintjs/core";
import * as React from "react";

interface IProps {
    categories: string[];
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
        const {categories} = this.props;
        const {category} = this.state;
        return (
            <Card>
                <h4>Create new category</h4>
                <label className="bp3-label">
                    Category name
                    <InputGroup onChange={this.onChange} value={category}/>
                </label>
                {category && (
                    <Button
                        intent={Intent.SUCCESS}
                        onClick={this.onClick}
                        disabled={categories.filter(name => name === category).length > 0}
                    >Create new category</Button>
                )}
                <h4>All Categories</h4>
                <table
                    className="bp3-html-table bp3-html-table-striped bp3-interactive"
                    style={{width: '100%'}}
                >
                    <tbody style={{height: '300px'}}>
                    {categories.map((name, index) => {
                        return (
                            <tr key={index}>
                                <td>{name}</td>
                            </tr>
                        );
                    })}
                    </tbody>
                </table>
            </Card>
        )
    }
}

export default NewCategory;
