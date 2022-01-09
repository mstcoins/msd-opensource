// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.5.0;

import "./TRC20.sol";
import "./TRC20Detailed.sol";

/**
 * @title Metaverse Pawn Ecosystem Equity Certificate
 * @dev Metaverse Pawn Ecosystem Equity Certificate, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `TRC20` functions.
 */
contract Token is TRC20, TRC20Detailed {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public TRC20Detailed("Metaverse Pawn System Equity", "MSD", 6) {
        _mint(msg.sender, 1000000000 * (10 ** uint256(decimals())));
    }
}
