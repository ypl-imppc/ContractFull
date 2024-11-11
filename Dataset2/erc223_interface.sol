pragma solidity ^0.4.9;

 /* 新的 ERC23 contract 接口文件 */

contract ERC223 {
    uint public totalSupply;
    
    /**
    代币名称 【同ERC20】
     */
    function name() public constant returns (string _name);
    /**
    代币的标识符 【同ERC20】
     */
    function symbol() public constant returns (string _symbol);
    /**
    小数点后几位 【同ERC20】
     */
    function decimals() public constant returns (uint8 _decimals);
    /**
    代币总发行量 【同ERC20】
    */
    function totalSupply() public constant ;// returns (uint256 _supply);
    /**
    查询某地址余额 【同ERC20】
     */
    function balanceOf(address who) public constant; //returns (uint);
    /**
    转账给 某个外部账户 【同ERC20】
     */
    function transfer(address to, uint value) public;// returns (bool ok);
    /**
    转账给合约  该合约必须是实现了 名为: tokenFallback的函数
    data可以附加到这个令牌交易中，它将永远保持在块状（需要更多的gas）。 _data可以是空的
     */
    function transfer(address to, uint value, bytes data) public; //returns (bool ok);
    /**
    重载 转账给合约
     */
    function transfer(address to, uint value, bytes data, string custom_fallback) public; //returns (bool ok);
    event Transfer(address indexed from, address indexed to, uint value, bytes indexed data);
}
