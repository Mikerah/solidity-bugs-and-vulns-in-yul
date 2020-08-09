pragma solidity >=0.4.15;

contract Alice { 
    int public val;

    function set(int new_val) public {
        val = new_val;
    }

    function set_fixed(int new_val) public {
        val = new_val;
    }

    fallback() external{
        val = 1;
    }
}