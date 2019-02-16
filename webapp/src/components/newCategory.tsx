import { Button, Card, Elevation, InputGroup, Intent } from "@blueprintjs/core";
import * as React from "react";

interface IState {
    category: string;
}

export class NewCategory extends React.Component<{}, IState> {

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
    };

    public render() {
        const { category } = this.state;
        return (
            <>
                <Card elevation={Elevation.TWO}>
                    <label className="bp3-label">
                        Insert your DNA
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
