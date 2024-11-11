pragma solidity 0.4.24;

contract IERC20Bad{
    function transfer(address to, uint value) external returns (bool);
    function approve(address spender, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
    function totalSupply() external view returns (uint);
    function balanceOf(address who) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);
    //Bad
    event Transfer(address from, address to, uint value);
    event Approval(address owner, address spender, uint value);
   //Good
    //event Transfer(address indexed _from, address indexed _to, uint _value);
    //event Approval(address indexed _owner, address indexed _spender, uint _value);
}

