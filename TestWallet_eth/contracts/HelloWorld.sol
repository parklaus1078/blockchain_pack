// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract HelloWorld {
  uint sampleVariable;  // state variable: values permanently stored in contract storage.

  function testOperators(uint value) public pure returns(bool) {
    uint x = value;
    uint y = 300;

    return x < y;
  }

  /// Returns a string
  /// @param ()
  /// @dev returns a string, "Hello World"
  function print() public pure returns (string memory) {
    return "Hello World!";
  }
}
      