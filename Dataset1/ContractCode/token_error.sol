pragma solidity 0.5.16;
contract IERC20_ERROR{

string public SYMBOL; //1Turn SYMBOL into lowercase
string public NAME;   //2Turn NAME into lowercase
uint8 public DECIMALS;//3Turn DECIMALS into lowercase

//4function approve be lack of approval;And lack of the value of return()
function approve(address _spender, uint _amount) {
    allowed[msg.sender][_spender] = _amount;
}
//5function transfer lack of the value of return()
function transfer(address _to, uint256 _value) {
    if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
    if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
    balanceOf[msg.sender] -= _value;                     // Subtract from the sender
    balanceOf[_to] += _value;                            // Add the same to the recipient
    Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place
}
//6function approve lack of the value of return()
function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3 * 32) {
    var _allowance = allowed[_from][msg.sender];
    balances[_to] = balances[_to].add(_value);
    balances[_from] = balances[_from].sub(_value);
    allowed[_from][msg.sender] = _allowance.sub(_value);
    Transfer(_from, _to, _value);
}

}