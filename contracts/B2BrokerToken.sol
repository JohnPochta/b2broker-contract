// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";

contract B2BrokerToken is OFT {
    uint256 public constant MAX_SUPPLY = 1000000000 * 1e18;

    constructor(
        address _lzEndpoint,
        address _owner
    )
        OFT("B2Broker", "B2BT", _lzEndpoint, _owner)
        Ownable(_owner)
    {
        _mint(_owner, MAX_SUPPLY);
    }
}