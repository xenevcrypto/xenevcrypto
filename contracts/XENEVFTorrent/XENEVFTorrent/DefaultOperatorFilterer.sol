// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {OperatorFilterer} from "./OperatorFilterer.sol";

/**
 * @title  DefaultOperatorFilterer
 * @notice Inherits from OperatorFilterer and automatically subscribes to the default OpenSea subscription.
 */
abstract contract DefaultOperatorFilterer is OperatorFilterer {
    address constant DEFAULT_SUBSCRIPTION = address(0xD7a62E4B044243Fb49D9D71fbD4Db46EAeB572Dd);

    constructor() OperatorFilterer(DEFAULT_SUBSCRIPTION, true) {}
}