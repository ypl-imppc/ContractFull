pragma solidity 0.4.24;
contract Holder {
    uint public holdUntil;
    address public holder;

    function Holder(uint period) public payable {
        holdUntil = now + period;
        holder = msg.sender;
    }

    function withdraw (uint a, uint b) external {
        if (now < holdUntil){
            revert();
        }//require(now < holdUntil,"");
        holder.transfer(this.balance);
    }

    function withdraw_1 (uint a, uint b) external {
        if (now < holdUntil){
            throw;
        }
        holder.transfer(this.balance);
    }

}