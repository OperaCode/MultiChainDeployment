// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;



contract Owner {

    address private owner;

    // event for EVM logging
    event OwnerSet(address indexed oldOwner, address indexed newOwner);

    // modifier to check if caller is owner
    modifier isOwner() {
        require(msg.sender == owner, "Caller is not owner");
        _;
    }

    
    //  Set contract deployer as owner
    
    constructor() {
       
        owner = msg.sender; 
        emit OwnerSet(address(0), owner);
    }

    
//    Change owner address of new owner
     
    function changeOwner(address newOwner) public isOwner {
        require(newOwner != address(0), "New owner should not be the zero address");
        emit OwnerSet(owner, newOwner);
        owner = newOwner;
    }

    
    //  Return owner address address of owner
     
    function getOwner() external view returns (address) {
        return owner;
    }
} 
