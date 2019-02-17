import * as React from "react";

export class Home extends React.Component {

    public render() {
        return (
            <>
                <div style={{textAlign: 'center', marginTop: '5%'}}>
                    <h1 style={{fontSize: '2.5em'}}>Decentralizing Health Care</h1>
                    <p style={{fontSize: '1.5em'}}>By utilizing the power of Fully Homomorphic Encryption to provide health analysis without revealing highly sensitive data.
                    </p>
                </div>
                <div className="home-background"/>
            </>
        )
    }
}

export default Home;
