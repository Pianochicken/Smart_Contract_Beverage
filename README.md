## Smart Contract Beverage

This is a simple smart contract to present the process of selling beverage. As a contract owner, you can assign an account as a new store owner and set the amount of beverages(In this case, Coffee, Latte and Bubble tea). As a store owner, you can supplement the beverages and withdraw the profit. As a buyer, you can pay the Ether for these beverages. In this example, we will display how to deploy and interact with the smart contract on Rosten Test Network by Online IDE [Remix](http://remix.ethereum.org/) and Blockchain Wallet [MetaMask](https://metamask.io/). 

### Steps
1. Clone this repo or download the Beverage_Selling.sol file in contracts directory.
```
git clone https://github.com/Pianochicken/Smart_Contract_Beverage.git
```
2. Go to [Remix](http://remix.ethereum.org/) upload the .sol file to default contracts directory.
![1](https://github.com/Pianochicken/Smart_Contract_Beverage/images/1.png)

3. Compile the smart contract.
![2](https://github.com/Pianochicken/Smart_Contract_Beverage/images/2.png)

4. ENVIRONMENT select 'Injected Web3' and Deploy the smart contract. (Make sure your MetaMask is connected with Rosten Test Network, or you will spend actual ether.)
![3](https://github.com/Pianochicken/Smart_Contract_Beverage/images/3.png)
p.s You can also select 'JavaScript VM' to interact with the smart contract in Virtual Machine environment build by Remix.

5. Have Fun with this smart contract!


### Function Introduction

After deployment, the contract interact function will display below.
![4](https://github.com/Pianochicken/Smart_Contract_Beverage/images/4.png)

(contract owner)
addStore: The contract owner can assign the account address as a store owner. You also need to fund at least 0.05 ethers(50 finneys) and set up the amount of beverages for this new store.

(store owner)
add_inventory: The store owner can add inventory to the store through this function.

withdraw: Withdraw the store's profit to the store owner's account.

(customer)
Buy_Drink: The customer need to pay the ethers for their beverage.

stores: Check the remaining stock, ether profit of the store.
buyers: Check the amount of beverage the customers bought.
contract_owner: display the contract owner's address.


I've deploy this smart contract on Rosten Test Network.
You can take a look on [Etherscan](https://ropsten.etherscan.io/address/0x5fd9531854e9f5325f79bd8125d9cada86ea757e)
Contract address: 0x5FD9531854e9F5325f79bd8125d9CAda86eA757E

![5](https://github.com/Pianochicken/Smart_Contract_Beverage/images/5.png)