pragma solidity >=0.4.15;

interface Alice { 
    function set(uint) external; 
    function set_fixed(int) external;  
}

contract Bob { 
    function set(Alice c) public { 
        c.set(42); 
    }

    function set_fixed(Alice c) public{ 
        c.set_fixed(42); 
    } 
}