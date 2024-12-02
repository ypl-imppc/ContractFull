pragma solidity 0.6.2;
contract Uninitialized{
   address owner = msg.sender;

    struct St{
        uint a;
    }

    function func() {
        St st;
        st.a = 0x0;
    }
   
}
