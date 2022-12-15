// SPDX-Licens-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract Shop {
    address public owner;
    mapping (address => uint) 
    public snickerBalance;

    mapping (address => uint) 
    public chewingGumBalance;

    mapping (address => uint) 
    public chainsawBalance;

    constructor() {
        owner = msg.sender;
        snickerBalance[address(this)] = 1000;
        chewingGumBalance[address(this)] = 500;
        chainsawBalance[address(this)] = 100;
    }

//Snicker
    function getSnickerBalance() public view returns (uint) {
        return snickerBalance[address(this)];
    }


    function restockSnicker(uint amount) public {
        require(msg.sender == owner, "Only the owner can restock.");
        snickerBalance[address(this)] += amount;
    }

    function purchaseSnicker(uint amount) public payable {
        require(msg.value >= amount * 0.0003 ether, "You have to less ether");
        require(snickerBalance[address(this)] >= amount, "Not enough snickers in stock to complete this purchase");
        snickerBalance[address(this)] -= amount;
        snickerBalance[msg.sender] += amount;
    }

    //chewing gum

    //Snicker
    function getChewingGumBalance() public view returns (uint) {
        return chewingGumBalance[address(this)];
    }


    function restockChewingGum(uint amount) public {
        require(msg.sender == owner, "Only the owner can restock.");
        chewingGumBalance[address(this)] += amount;
    }

    function purchaseChewingGum(uint amount) public payable {
        require(msg.value >= amount * 0.0003 ether, "You have to less ether");
        require(chewingGumBalance[address(this)] >= amount, "Not enough chewing gum in stock to complete this purchase");
        chewingGumBalance[address(this)] -= amount;
        chewingGumBalance[msg.sender] += amount;
    }

    //Chainsaw
        function getChainsawBalance() public view returns (uint) {
        return chainsawBalance[address(this)];
    }


    function restockchainsaw(uint amount) public {
        require(msg.sender == owner, "Only the owner can restock.");
        chainsawBalance[address(this)] += amount;
    }

    function purchasechainsaw(uint amount) public payable {
        require(msg.value >= amount * 0.03 ether, "You have to less ether");
        require(chainsawBalance[address(this)] >= amount, "Not enough chainsaw in stock to complete this purchase");
        chainsawBalance[address(this)] -= amount;
        chainsawBalance[msg.sender] += amount;
    }
}