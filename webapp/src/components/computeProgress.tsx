import {Button, Callout, Classes, Dialog, Intent, Spinner, Tooltip} from "@blueprintjs/core";
import * as React from "react";

interface IProps {
    computeProgressOpen: boolean;
    dataToEncrypt: string;
    encryptedData: string;
    encryptedComputedData: string;
    decryptedComputedData: string;
    closeComputeProgressAction: () => void;
}

export class ComputeProgress extends React.Component<IProps> {

    public render() {
        const {computeProgressOpen, dataToEncrypt, encryptedData, encryptedComputedData, decryptedComputedData} =
            this.props;
        return (
            <Dialog
                icon="database"
                onClose={this.handleClose}
                title="Computation Status"
                style={{height: '50vh', width: '30vh'}}
                isOpen={computeProgressOpen}
            >
                <div className={Classes.DIALOG_BODY}>
                    {decryptedComputedData !== '' && <Spinner/>}
                    <h4>The server is working hard on your data.</h4>

                    <Callout icon="info-sign" intent="none" title="The data to analyse">
                        {dataToEncrypt.slice(0, 10)}...
                    </Callout>

                    {encryptedData !== '' && <>
                    <Callout icon="info-sign" intent="none" title="The data encrypted">
                        {dataToEncrypt.slice(0, 10)}...
                    </Callout>
                    </>}

                    {encryptedComputedData !== '' && <>
                        <Callout icon="info-sign" intent="none" title="The computed encrypted data">
                            {encryptedComputedData.slice(0, 10)}...
                        </Callout>
                    </>}

                    {decryptedComputedData !== '' && <>
                        <Callout icon="info-sign" intent="success" title="The decrypted result">
                            {decryptedComputedData}
                        </Callout>
                    </>}
                </div>
                <div className={Classes.DIALOG_FOOTER}>
                    <div className={Classes.DIALOG_FOOTER_ACTIONS}>
                        {decryptedComputedData === '' ?
                            <>
                                <Tooltip content="Close this window" intent={Intent.WARNING}>
                                    <Button onClick={this.handleClose}>Quit</Button>
                                </Tooltip>
                            </> :
                            <>
                                <Tooltip content="Close this window" intent={Intent.PRIMARY}>
                                    <Button onClick={this.handleClose}>Close</Button>
                                </Tooltip>
                            </>
                        }
                    </div>
                </div>
            </Dialog>
        )
    }

    private handleClose = () => {
        this.props.closeComputeProgressAction();
    }
}

export default ComputeProgress;
