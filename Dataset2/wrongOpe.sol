pragma solidity 0.4.26;

//based on swc

contract wrongOpe{
    uint256 public myNum;
    address public owner;
    uint256 public winNum;
    uint256 private constant opeNum = 1;
    
    constructor(uint256 _num, uint256 _win) public payable{
        myNum = _num;
        owner = msg.sender;
        winNum = _win;
        require(msg.value == 1 ether);
    }
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    function addOne() external payable{
        require(msg.value == 1 wei);
        //The error operator can still be compiled. In our practice, with the compiler before 0.5.0, the =+ and =- operators can be successfully compiled without compile errors.
        myNum =+ opeNum; //wrong operator
        isWin();
    }
    
    function subOne() external payable{
        require(msg.value == 1 wei);
        myNum =- opeNum; //wrong operator
        isWin();
    }
    
    function isWin() internal{
        if(myNum == winNum && msg.sender != owner)
            msg.sender.transfer(address(this).balance);
    }
    
}