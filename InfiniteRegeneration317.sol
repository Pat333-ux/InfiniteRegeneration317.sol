pragma solidity ^0.8.0;

contract InfiniteRegeneration317 {
    uint256 public node;
    uint256 public constant MAX_NODE = 317;

    event NodeAdvanced(uint256 indexed newNode);

    function advanceNode() external {
        node += 1;

        if (node > MAX_NODE) {
            node = 0;
        }

        emit NodeAdvanced(node);
    }
}
