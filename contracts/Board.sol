pragma solidity 0.5.12;

contract Board {

    uint256 maxLength = 140; 

    event PostMessage(
        address indexed sender,
        string message
    );

    function setMaxLength(uint len) external {
        maxLength = len;
    }

    function postMessage(string calldata message) external {
        bytes memory sl = bytes(message);

        require(sl.length <= maxLength, "String too long");
        
        emit PostMessage(msg.sender, message);
    }

}