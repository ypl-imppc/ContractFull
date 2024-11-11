contract NonPayloadAttackableToken {
   modifier onlyPayloadSize(uint size) {
     assert(msg.data.length == size + 4);
     _;
   } 

  function transfer(address _to, uint256 amount) onlyPayloadSize(2 * 32) {
     if(balances[msg.sender] < amount) return false;
        balances[msg.sender] = balances[msg.sender].sub(amount);
        balances[to] = balances[to].add(amount);
        emit Transfer(msg.sender, to, amount);
        return true;
  }   
}
