# Decentralized_Storage
1. Created a Dropbox clone full stack decentralized application where users can store their files in the blockchain using IPFS (Inter Planetary File System).
2. Deployed the smart contract on Ganache and also on Rinkeby test network.

# Project Diagram

![Dropbox_clone](https://user-images.githubusercontent.com/10496268/126797523-ba041e49-6f4c-4b69-93dd-1d21cfd60672.png)

# Tools needed:
1. Truffle box for Local DAPP Developemnt: https://github.com/truffle-box/react-box
2. Metamask for Deploying it in Test networks:  https://metamask.io/
3. Ganache by Truffle for Local blockchain testing:  https://www.trufflesuite.com/ganache

# Installation
1. npm install -g truffle ---> Truffle intsallation
2. truffle unbox react    ---> Unbox the React box

## How to execute the DAPP?
1. Connect ganache to the Metamask using Custom RPC option in Metamask and import the accounts from Ganache
2. Make Sure that Ganache is running Locally (We can start Ganache either with GUI or by using the Ganache-CLI("ganache-cli --port 7545 --chainId 5777")
3. Run the React Application using "npm run start", this will start our React application in localhost:3000
4. We will be provided with an option to chose the file and enter description for the file. After selecting the file, We will click on upload.
5. If the transaction goes through, File will be uploaded to IPFS and file hash will be stored on blockchain
6. We can view the uploaded files by clicking on file hash (Which acts as an address to the file in IPFS)
7. We can either use Ganache or any Test network to deploy the application on blockchain. We use Infura to deploy the app on test networks.

