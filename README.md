# Trustless.Health
We present a WebAssembly interpreter with Fully Homomorphic Encryption to power a dapp for zero-knowledge analysis of sensitive medical data.

Today, we are experiencing an explosion of the amount of medical data about us - full genome sequencing, microbiome data, etc - and this presents an opportunity of machine learning algorithms to significantly improve health case. However, the current services requires you to upload your medical data in clear text (unacceptable with respect to privacy) and lacks proper bench-marking. We introduce Trustless.Health, a decentralised and transparent platform for machine analysis of medical data based on top of Ethereum. We also present **fhe-wasm**, a WebAssembly interpreter with support for full homomorphic encryption, that backs all models on Trustless.Health meaning no user data (including the results of the analysis!) is ever revealed to the model service providers.

This project was started at the [ETH Denver Hackaton 2019](https://www.ethdenver.com).

## Tech Stack
The core of Trustless.Health is the compute engine which runs all models using fully homomorphic encryption. To make sure the platform would support as many languages as possible an interpreter was written on top of NuCypher's nufhe package. Thereby, it was achieved to execute models compiled for WebAssembly under FHE. In the **rust-example** directory, we show how a DNA analysis model written in Rust is compiled to WASM and then executed on encrypted input data using **fhe-wasm**.

The front-end, hosted at [https://trustless.health](https://trustless.health/), is a React/Redux webapp written in typescript with ts-lint for strong type-safety. The web app uses axios to query a local Python server, which uses the nufhe package to generate encryption keys as well as encrypting/decrypting of messages. Users should run this locally (see the client-server directory). The webapp is web3 compatible and should work out of the box with Metamask.
