Autor Achim Unterkofler

Welcome to the Shop 

If you just want to interact and buy some stuff from the shop. Just go to https://sepolia.etherscan.io/ there you can search for this smart Contract. The address of the contract is: 0xB78869cD016157fda98FD43072ac96967633E4B6

When you find the contract with the specified address go to contract. There you can choose "Read Contract" ther you have the functionality to get the balances stored in the shop or you can check if an account already have some items from the shop. You can check that by passing the account address in.

You can also go to "Write Contract" there you can shop but first you have to connect your MetaMast by clicking on connect to Web3.
Enjoy the Shop!!

If you want to deploy this contract on your own you have to create a .env file where you put:

PRIVATE_KEY_0=your privat key
SECRET_KEY=your secret key
INFURA_API_URL=https://sepolia.infura.io/v3/1e681c216b7c4726ae94f0d2f6da7df0

Then you can go to the terminal and write truffle migrate --network sepolia. If every thing works you can take the contract address
and check it on https://sepolia.etherscan.io/ if it is deployed.