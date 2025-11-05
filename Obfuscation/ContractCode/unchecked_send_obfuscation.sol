pragma solidity 0.4.24;

contract MyConc{
    uint in_msgvalue = msg.value

    function bad(address payable dst) external payable{
        dst.send(in_msgvalue);

	//dst.send(msg.value);
    }

   // function bad_1() external payable{
   //    msg.sender.send(msg.value);
   // }

    function good(address payable dst) external payable{
        require(dst.send(msg.value)(""));
    }

    function good2(address payable dst) external payable{
        bool res = dst.send(msg.value)("");
        if(!res){
            emit Failed(dst, msg.value);
        }
    }

    event Failed(address, uint);
}
