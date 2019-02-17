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
                style={{minHeight: '500px', minWidth: '700px'}}
                isOpen={computeProgressOpen}
                canEscapeKeyClose={false}
                canOutsideClickClose={false}
            >
                <div className={Classes.DIALOG_BODY}>

                    <Callout icon="info-sign" intent="none" title="Data to analyse">
                        <div className="flex-grid">
                            <div className="col">
                                {dataToEncrypt.slice(0, 20)}...
                            </div>
                            <div className="col callout-spinner">
                                {encryptedData === '' && <Spinner/>}
                            </div>
                        </div>
                    </Callout>
                    <br/>
                    {encryptedData !== '' && <>
                    <Callout icon="info-sign" intent="none" title="Encrypted data">
                        <div className="flex-grid">
                            <div className="col">
                                {encryptedData.slice(0, 20)}...
                            </div>
                            <div className="col callout-spinner">
                                {encryptedComputedData === '' && <Spinner/>}
                            </div>
                        </div>
                    </Callout>
                    </>}
                    <br/>
                    {encryptedComputedData !== '' && <>
                        <Callout icon="info-sign" intent="none" title="Computed encrypted data">
                            <div className="flex-grid">
                                <div className="col">
                                    {encryptedComputedData.slice(0, 20)}...
                                </div>
                                <div className="col callout-spinner">
                                    {decryptedComputedData === '' && <Spinner/>}
                                </div>
                            </div>
                        </Callout>
                    </>}
                    <br/>
                    {decryptedComputedData !== '' && <>
                        <Callout icon="info-sign" intent="success" title="Decrypted result">
                            {decryptedComputedData}
                        </Callout>
                    </>}
                </div>
                <div className={Classes.DIALOG_FOOTER}>
                    <div className={Classes.DIALOG_FOOTER_ACTIONS}>
                        {decryptedComputedData === '' ?
                            <>
                                <Tooltip content="Close this window">
                                    <Button onClick={this.handleClose} intent={Intent.DANGER}>Quit</Button>
                                </Tooltip>
                            </> :
                            <>
                                <Tooltip content="Close this window">
                                    <Button onClick={this.handleClose} intent={Intent.PRIMARY}>Close</Button>
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
