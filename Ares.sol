pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";


/**
 * @title Ares Token
 * @dev tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */

contract Ares is ERC20, ERC20Detailed {
    uint256 public constant INITIAL_SUPPLY = 1000000000 * (10 ** uint256(decimals()));

    constructor () public ERC20Detailed("AresToken", "ARES", 18) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
