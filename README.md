## Smart Contract Beverage

　　This is a simple smart contract to present the process of opening new store, assign store owner, selling beverage and withdraw the profit. As a contract owner, you can assign an account as a new store owner and set the amount of beverages(In this case, Coffee, Latte and Bubble tea). As a store owner, you can supplement the beverages and withdraw the profit. As a buyer, you can pay the Ether for these beverages. In this example, we will display how to deploy and interact with the smart contract on Rosten Test Network by Online IDE [Remix](http://remix.ethereum.org/) and Blockchain Wallet [MetaMask](https://metamask.io/).

### Follow Steps

1. Clone this repo or download the Beverage_Selling.sol file in contracts directory.
```
git clone https://github.com/Pianochicken/Smart_Contract_Beverage.git
```
2. Go to [Remix](http://remix.ethereum.org/) and upload the .sol file to default contracts directory.

<img align="center" src="https://github.com/Pianochicken/Smart_Contract_Beverage/blob/main/images/1.png" alt="image 1" width="100%">


3. Compile the smart contract.

<p align="center">
    <img src="https://github.com/Pianochicken/Smart_Contract_Beverage/blob/main/images/2.png" alt="image 2" width="30%">
</p>


4. ENVIRONMENT select 'Injected Web3' and Deploy the smart contract.

<p align="center">
    <img src="https://github.com/Pianochicken/Smart_Contract_Beverage/blob/main/images/3.png" alt="image 3" width="30%">
</p>

p.s You can also select 'JavaScript VM' to interact with the smart contract in Virtual Machine environment build by Remix.


5. The confirm window from Metamask will pop up after selecting deploy. The default gas setting usually fine with most of situations. Only make sure your MetaMask is connected with Rosten Test Network, or you will spend actual ether.

<p align="center">
    <img src="https://github.com/Pianochicken/Smart_Contract_Beverage/blob/main/images/4.png" alt="image 4" width="30%">
</p>


6. Have Fun with this smart contract!


### Function Description

After deployment, the contract interact function will display below.

<p align="center">
    <img src="https://github.com/Pianochicken/Smart_Contract_Beverage/blob/main/images/5.png" alt="image 5" width="30%">
</p>


<b>[As a contract owner]</b>

addStore: The contract owner can assign the account address as a store owner. You also need to fund at least 0.05 ethers(50 finneys) and set up the amount of beverages for this new store.


<b>[As a store owner]</b>

add_inventory: The store owner can add inventory to the store through this function.

withdraw: Withdraw the store's profit to the store owner's account.


<b>[As a customer]</b>

Buy_Drink: The customer need to pay the ethers for their beverage.

<br/>

<b>[Check Information]</b>

stores: Check the remaining stock, ether profit of the store.

buyers: Check the amount of beverage the customers bought.

contract_owner: Display the contract owner's address.

<br/>

I've already deployed this smart contract on Rosten Test Network. You can load contract from the address below to interact with my contract. All the history behavior can be recorded and be searched.

Take a look on [Etherscan](https://ropsten.etherscan.io/address/0x5fd9531854e9f5325f79bd8125d9cada86ea757e) with contract address: 0x5FD9531854e9F5325f79bd8125d9CAda86eA757E

<img align="center" src="https://github.com/Pianochicken/Smart_Contract_Beverage/blob/main/images/6.png" alt="image 6" width="100%">