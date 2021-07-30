// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.5;

contract beverage_selling {
    
    struct Store {
        uint eth_balance;
        uint coffee;
        uint latte;
        uint bubble_tea;
        bool exist;
    }
    
    struct Buyer {
        uint coffee;
        uint latte;
        uint bubble_tea;
    }
    
    mapping(address => Store) public stores;
    mapping(address => Buyer) public buyers;
    address public contract_owner;
    
    // error insufficientError(bytes input);
    
    constructor() {
        contract_owner = msg.sender;
        // payable(contract_owner) = msg.value;
    }
    
    function addStore(address store, uint coffee_amount, uint latte_amount, uint bubble_tea_amount) external payable{

        require(msg.sender == contract_owner, 'Only the contract owner can add stores.');
        require(stores[store].exist == false, 'This store already exist.');
        require(msg.value >= 0.05 ether, 'Need at least 0.05 ether to add new store.');
        stores[store] = Store(msg.value, coffee_amount, latte_amount, bubble_tea_amount, true);
    }
    
    function add_inventory(uint coffee_amount, uint latte_amount, uint bubble_tea_amount) external{
        Store storage store = stores[msg.sender];
        require(store.exist != false, 'The store is not exist.');

        store.coffee += coffee_amount;
        store.latte += latte_amount;
        store.bubble_tea += bubble_tea_amount;
    }
    
    function withdraw(uint finney_amount) external{
        Store storage store = stores[msg.sender];
        require(store.exist != false, 'The store is not exist.');
        require(store.eth_balance > finney_amount, 'Ether balance is insufficient.');
        
        payable(msg.sender).transfer(finney_amount * 10**15) ;
        store.eth_balance -= (finney_amount) * 10**15;
        
    }
    
    function Buy_Drink(address store_address, uint coffee_amount, uint latte_amount, uint bubble_tea_amount) external payable {
        Store storage store = stores[store_address];
        Buyer storage buyer = buyers[msg.sender];
        
        require(store.exist != false, 'The store is not exist.');
        require(msg.sender != store_address, 'Store owner can not buy your own drinks.');
        
        // bool[] memory insufficient;
        // insufficient[0] = false; insufficient[1] = false; insufficient[2] = false;
        // uint insufficient_amount;
        
        // bytes memory error_revert = "Store's ";
        
        // if(store.coffee < coffee_amount){
        //     insufficient[0] = true;
        //     bytes.concat(error_revert, bytes('coffee'));
        // }
        // if(store.latte < latte_amount){
        //     insufficient[1] = true;
        //     if(insufficient[0] == true){
        //         bytes.concat(error_revert, bytes(', latte'));
        //     }
        //     else{
        //         bytes.concat(error_revert, bytes('latte'));
        //     }
        // }
        // if(store.bubble_tea < bubble_tea_amount){
        //     insufficient[2] = true;
        //     if(insufficient[0] == true || insufficient[1] == true){
        //         bytes.concat(error_revert, bytes(', bubble tea'));
        //     }
        //     else{
        //         bytes.concat(error_revert, bytes('bubble tea'));
        //     }
        // }
        
        // for(uint i = 0; i < insufficient.length; i++){
        //     if(insufficient[i] == true){
        //         insufficient_amount += 1;
        //     }
        // }
        
        // if(insufficient_amount == 1){
        //     bytes.concat(error_revert, bytes(' amount is insufficient.'));
        //     // require(insufficient_amount == 0, string(error_revert));
        //     // revert insufficientError({input: error_revert});
        // }
        // else if(insufficient_amount > 1){
        //     bytes.concat(error_revert, bytes(' amounts are insufficient.'));
        //     // require(insufficient_amount == 0, string(error_revert));
        //     // revert insufficientError({input: error_revert});
        // }
        
        require(store.coffee >= coffee_amount, "Store's coffee is insufficient.");
        require(store.latte >= latte_amount, "Store's latte is insufficient.");
        require(store.bubble_tea >= bubble_tea_amount, "Store's bubble tea is insufficient.");
        
        require(coffee_amount > 0 || latte_amount > 0 || bubble_tea_amount > 0, "You have to buy something!");
        
        uint cost_coffee = 1000 wei * coffee_amount;
        uint cost_latte = 1000 wei * latte_amount;
        uint cost_bubble_tea = 1000 wei * bubble_tea_amount;

        require(msg.value == (cost_coffee + cost_latte + cost_bubble_tea), "You have to pay exact amounts of Ethers.");        
        store.coffee -= coffee_amount;
        store.latte -= latte_amount;
        store.bubble_tea -= bubble_tea_amount;
        
        store.eth_balance += msg.value;
        
        buyer.coffee +=  coffee_amount;
        buyer.latte +=  latte_amount;
        buyer.bubble_tea +=  bubble_tea_amount;
    
        // payable(store).transfer(msg.value);
       
        // cupcakeBalances[address(this)] -= amount;
        // cupcakeBalances[msg.sender] += amount;
        
        // payable(stores[]).transfer(msg.value);

    }

    // function transfer_ether(address receiver) external payable {
    //     require(contract_owner == msg.sender, 'You are not owner.');
    //     payable(receiver).transfer(msg.value);
    // }
}