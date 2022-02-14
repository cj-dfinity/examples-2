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

The project folder will then look like this:

![Counter Frontend](images/project_files.png)


## Documentation
The three main parts of the example dapp is the backend, the Candid interface and the frontend. This example project is based on the default project, which is created when running the `dfx new project_name`, but most of the default project code is replaced to create the counter functionality in this project.

### Motoko backend
The backend functions are located in the `src/minimal_dapp/main.mo` Motoko file. The backend stores the counter value, and has functions to get, increment and reset the counter value.


#### Counter variable
Three functions are created to make the counter work: count(), getCount() and reset(). The current counter value is stored as a number in the actor.


```javascript
actor {
    var counter : Nat = 0;
}
```

#### count()
The `count()` function increments the counter variable. This function is envoked when the user is clicking the button on the frontend, or when the function is called through the Candid interface.

```javascript
public func count() : async Nat {
    counter += 1;
    return counter;
};
```

The function is returning the incremented counter variable.

#### getCount()
The `getCount()` function returns the current counter value.

```javascript
public query func getCount() : async Nat {
    return counter;
};
```

#### reset()
The `reset()` function resets the counter value to 0 and returns the value.

```javascript
public func reset() : async Nat {
    counter := 0;
    return counter;
};
```








## Create New Project
Duration: 0:03:00

Run this command to create project:

```bash
$ dfx new minimal_dapp
```

DFX will create a new directory called *minimal_dapp*, and in this directory you will find all the files, both frontend, backend, configurations etc. for the default project. The default project can be deployed without any changes as it is.

![Default project](images/project_files.png)

The `src` directory will contain the default frontend and backend code.

The `dfx.json` file contains the canister configuration. It defines the canister(s), where the source code for the canister(s) is located, the type of canister(s) and which version of DFX the project was created with. 
