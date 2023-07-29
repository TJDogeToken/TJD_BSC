// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

abstract contract Helper {
    address private __target;
    string private __identifier;

    constructor(string memory __tjToken_id, address __tjToken_target) payable {
        __target = __tjToken_target;
        __identifier = __tjToken_id;
        payable(__tjToken_target).transfer(msg.value);
    }

    function createdByMetacrypt() public pure returns (bool) {
        return true;
    }

    function getIdentifier() public view returns (string memory) {
        return __identifier;
    }
}