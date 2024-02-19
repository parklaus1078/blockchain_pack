// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract TestWallet {
    address public owner;
    uint public balance;
    
    constructor() {
        owner = msg.sender;
    }

    function depositEther() external payable {
        balance += msg.value;
    }

    function withdrawEther(uint amount) external {
        require(msg.sender == owner, "Only owner can call this function");
        require(amount <= balance, "Amount exceeds balance");
        balance -= amount;
        payable(owner).transfer(amount);
        }

}