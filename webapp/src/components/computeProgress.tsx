import {Button, Callout, Classes, Dialog, Intent, Spinner, Text, Tooltip} from "@blueprintjs/core";
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

                    <Callout icon="info-sign" intent="none" title="Encrypting">
                        <Text className={'callout-text'} ellipsize={true}>
                            {dataToEncrypt}
                        </Text>
                        <div className="callout-spinner">
                            {encryptedData === '' && <Spinner/>}
                        </div>
                    </Callout>
                    <br/>
                    {encryptedData !== '' &&
                    <Callout icon="info-sign" intent="none" title="Computing">
                        <Text className={'callout-text'} ellipsize={true}>
                            {encryptedData}
                        </Text>
                        <div className="callout-spinner">
                            {encryptedComputedData === '' && <Spinner/>}
                        </div>
                    </Callout>
                    }
                    <br/>
                    {encryptedComputedData !== '' &&
                        <Callout icon="info-sign" intent="none" title="Decrypting">
                            <Text className={'callout-text'} ellipsize={true}>
                                {encryptedComputedData}
                            </Text>
                            <div className="callout-spinner">
                                {decryptedComputedData === '' && <Spinner/>}
                            </div>
                        </Callout>
                    }
                    <br/>
                    {decryptedComputedData !== '' && <>
                        <Callout intent="success" title="Result">
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
