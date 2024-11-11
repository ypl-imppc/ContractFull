pragma solidity 0.4.24;
contract UninitializedNoError{
   address owner = msg.sender;

    struct St{
        uint a;
    }

    function func() {
        St st;
        st.a = 0x0;
    }
   
}
