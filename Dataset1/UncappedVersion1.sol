//Solidity is a rapidly evolving language, and different statements may have different semantics in different Solidity versions. When writing contracts, you should explicitly specify the compiler version (a fixed version or a range of versions). Instead of not writing the compiler version or accepting an unlimited compiler versions, you may not be able to accurately understand the code semantics when you reread the code in the future.
pragma solidity >=0.4.21;

contract NoCappedversion {
    uint public x = 1;
}
