import {Card} from "@blueprintjs/core";
import * as React from "react";
import NewCategoryContainer from "../containers/newCategoryContainer";

export class ProviderTab extends React.Component {

    public render() {
        return (
            <div>
                <div className={'widget-wrapper'}>
                    <Card>
                        <p>Provider settings</p>
                    </Card>
                </div>
                <div className={'widget-wrapper'}>
                    <NewCategoryContainer/>
                </div>
            </div>
        )
    }
}

export default ProviderTab;
