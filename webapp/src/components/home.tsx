import * as React from "react";

export class Home extends React.Component {

    public render() {
        return (
            <>
                <div style={{textAlign: 'center', marginTop: '5%'}}>
                    <h1 style={{fontSize: '2.5em'}}>Decentralizing Health Care</h1>
                    <p style={{fontSize: '1.5em'}}>Using Fully Homomorphic Encryption to provide patients
                        with a choice of which company's health analysis tool to use.</p>
                </div>
                <div className="home-background"/>
            </>
        )
    }
}

export default Home;
