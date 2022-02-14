# Minimalistic Dapp
The example dapp shows how to build a very basic dapp with both backend and fronted, using Motoko for the backend functionality and plain HTML and JavaScript for the frontend. The dapp is a simple counter, which will increment a counter by clicking a button in the frontend. 

![Counter Frontend](images/frontend.png)

## Introduction
The purpuse of this example dapp is to build a minimalistic dapp, based on the default dapp template, installed by DFX when creating a new project. The dapp is a simple website with a counter. Every time a button is pressed, a counter is incremented. 

This example covers:

- Create new canister smart contract using the SDK (DFX)
- Use the default project as a template as the starting point for the new project
- Add backend functions for a counter (count, get count and reset count)
- Implement backend functions in the frontend
- Deploy the canister smart contract locally
- Test backend with Candid UI and command line using DFX, and test frontend in browser 




## Installation
This example project can be cloned, installed and deployed locally, for learning and testing purposes. The instructions are based on running the example on either macOS or Linux, but when using WSL2 on Windows, the instructions will be the same.

### Prerequisites
The example project requeres the following installed:

- GitHub
- Node.js
- DFX 

GitHub and Node can be installed from various package managers. DFX can be installed following the instructions [here](https://smartcontracts.org/docs/quickstart/local-quickstart.html#download-and-install).

### Install
Install the example dapp project:

```bash
$ git clone https://github.com/dfinity/examples
$ cd motoko/minimal-dapp
$ npm install
```


## Documentation
Documentation can exist in the README file, but it can also be located elsewhere if it is extensive. 

#### someFunction
```javascript
const token:Token = someFunction(name: string);
```
- **name:string** - a human readable name for the token
- returns **token:Token**

#### anotherFunction
```javascript
anotherFunction(token: Token, value: any);
```
- **token:Token** - a token created via someFunction
- **value:any** - a configuration value
- returns **undefined**

