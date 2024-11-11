pragma solidity 0.4.24;

contract PriceOracle {
    address internal owner;
    address[] public subscribers;
    mapping(address => uint) balances;
    uint internal constant PRICE = 10**15;

    bytes4 constant public SIGNATURE = bytes4(keccak256("setPrice(uint)"));

    constructor() public {
        owner = msg.sender;
    }

    function subscribe() payable external{
        subscribers.push(msg.sender);
        balances[msg.sender] += msg.value;
    }

    function setPrice(uint price) external {
        require(msg.sender == owner);
        bytes memory data = abi.encodeWithSelector(SIGNATURE, price);
        for (uint i = 0; i < subscribers.length; i++) {
            if(balances[subscribers[i]] >= PRICE) {
                balances[subscribers[i]] -= PRICE;
                subscribers[i].call.gas(50000)(data);
            }
        }
    }

    function withdrawFee() external {
        owner.transfer(address(this).balance);
    }
}