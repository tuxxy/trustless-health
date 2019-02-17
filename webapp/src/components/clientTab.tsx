import {Card, PanelStack} from "@blueprintjs/core";
import * as React from "react";
import ShowCategoriesContainer from "../containers/showCategoriesContainer";

export class ClientTab extends React.Component {

    public render() {
        return (
            <div>
                <div className={'widget-wrapper'}>
                    <Card>
                        <PanelStack initialPanel={{
                            component: ShowCategoriesContainer,
                            title: "Choose category"
                        }}/>
                    </Card>
                </div>
            </div>
        )
    }
}

export default ClientTab;
