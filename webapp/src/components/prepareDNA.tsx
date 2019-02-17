import {Button, Card, Classes, Dialog, Intent, IPanelProps, TextArea} from "@blueprintjs/core";
import * as React from "react";

interface IProps {
    categoryId: number;
    offeringId: number;
    offeringPrice: number;
    submitPurchaseOfferingAction: (offeringId: number, offeringPrice: number, categoryId: number, dataToEncrypt: string) => void
}

interface IState {
    DNA: string;
    showDialog: boolean;
}

export class PrepareDNA extends React.Component<IPanelProps & IProps, IState> {

    public state = {
        DNA: '',
        showDialog: false,
    };

    public onChange = (e: React.ChangeEvent<HTMLTextAreaElement>) => {
        const dnaLetters = ['A', 'T', 'G', 'C'];
        const dna = e.target.value;
        const filteredDNA = dna.split('').filter(letter => {
            return dnaLetters.includes(letter.toUpperCase());
        }).join('').toUpperCase();
        this.setState({
            DNA: filteredDNA,
        });
    };

    public handleOpenDialog = () => {
        this.setState({
            showDialog: true,
        })
    };

    public handleCloseDialog = () => {
        this.setState({
            showDialog: false,
        })
    };

    public handleContinue = () => {
        const { categoryId, offeringId, offeringPrice } = this.props;
        this.handleCloseDialog();
        this.props.submitPurchaseOfferingAction(offeringId, offeringPrice, categoryId, this.state.DNA);
    };

    public render() {
        const { DNA, showDialog } = this.state;
        return (
            <>
                <Card>
                    <label className="bp3-label">
                        Insert your DNA
                        <TextArea fill={true} className={'bp3-large'} onChange={this.onChange} value={DNA} />
                    </label>
                    {DNA && (
                        <Button intent={Intent.SUCCESS} onClick={this.handleOpenDialog}>Click here to purchase analysis</Button>
                    )}
                </Card>
                <Dialog isOpen={showDialog} onClose={this.handleCloseDialog} title={'Are you sure?'}>
                    <div className={Classes.DIALOG_BODY}>
                        <p>
                            Clicking continue will generate a key pair and encrypt your DNA so the provider will not be
                            able to access it directly. You will then be prompted by MetaMask to pay for the service,
                            after which you will be given a receipt and directions for continuing with the provider.
                        </p>
                    </div>
                    <div className={Classes.DIALOG_FOOTER}>
                        <div className={Classes.DIALOG_FOOTER_ACTIONS}>
                            <Button onClick={this.handleCloseDialog}>Back</Button>
                            <Button intent={Intent.PRIMARY} onClick={this.handleContinue}>
                                Continue
                            </Button>
                        </div>
                    </div>
                </Dialog>
            </>
        )
    }
}

export default PrepareDNA;
