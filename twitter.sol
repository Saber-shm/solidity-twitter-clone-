// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Twitter {
    mapping(address => string) public tweets;
    function createTweet(string memory _tweet) public {
        tweets[msg.sender] = _tweet;
    } 
    function getTweet(address owner) public view returns(string memory) {
        return tweets[owner]; 
    }
    function deleteTweet(address owner) public{
        tweets[owner] = "Tweet Deleted";
    }
   

}