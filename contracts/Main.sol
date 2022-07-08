// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7; //for supported version

contract Main {


    uint256 public feeVal;
    bool public paymentStatus=false;
    

    function setFee(uint256 _feeVal) public {
        feeVal=_feeVal;

    }

    function payFee() public payable{
        require(msg.value == feeVal , "incorrect amount");

    }

    function withdrawCollectedFee() public{

    }



}