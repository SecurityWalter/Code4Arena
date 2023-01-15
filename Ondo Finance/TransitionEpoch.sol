//Previous version w bug
  function transitionEpoch() public {
    uint256 epochDifference = (block.timestamp - currentEpochStartTimestamp) /
      epochDuration;
    if (epochDifference > 1) {
      currentRedeemAmount = 0;
      currentMintAmount = 0;
      currentEpoch += epochDifference;
      currentEpochStartTimestamp =
        block.timestamp -
        (block.timestamp % epochDuration);
    }
  }


//one of the way to solve this problem
  function transitionEpoch() public {
      uint256 value=block.timestamp - currentEpochStartTimestamp;
      while(value>=epochDuration){
            currentRedeemAmount = 0;
            currentMintAmount = 0;
            currentEpoch += 1;
            currentEpochStartTimestamp += epochDuration;
            value-=epochDuration;
      }
  }