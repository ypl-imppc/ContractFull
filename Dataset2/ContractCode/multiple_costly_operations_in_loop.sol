pragma solidity ^0.4.24;

contract CostlyOperationsInLoop{
  
  uint loop_count = 100;                                                                                         
  uint state_variable=0;
  mapping (uint=>uint) map; 
  uint[100] arr;
  
  function bad() external{                                                                                      
    for (uint i=0; i < loop_count; i++){
      state_variable++;                                                                                    
    }                                                                                                        
  }
  
  function good() external{
    uint local_variable = state_variable;
    for (uint i=0; i < loop_count; i++){
      local_variable++;                                                                                    
    }
    state_variable = local_variable;
  } 
}
