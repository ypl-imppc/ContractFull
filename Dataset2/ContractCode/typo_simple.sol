pragma solidity ^0.4.25;

contract TypoSimple {

    uint onlyOne = 1;
    bool win = false;

    function addOne() public {
        onlyOne =+ 1;
//onlyOne Error
        if(onlyOne>1) {
            win = true;
        }
    }
    
    function iWin() view public returns (bool) {
        return win;
    }
}
