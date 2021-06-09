pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract Avatar is Ownable {
    
    string private _name;
    string private _symbol;
    
    uint private _totalSupply;
    
    uint internal _mintFee;
    
    address internal _treasuryAddress;
    
    //mapping from tokenID to TokenURI
    mapping (uint => string) _tokenURI;
    
    mapping (uint => uint) _IdToIndex;
    
    constructor (string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }
    
    function setMintFee (uint mintFee_) onlyOwner public {
        _mintFee = mintFee_;
    }
    
    function tokenURI (address user_) public view returns (string memory) {
        return _tokenURI[_tokenId(user_)];
    }
    
    function tokenIndex (address user_) public view returns (uint) {
        return _IdToIndex[_tokenId(user_)];
    }
    
    function _tokenId (address owner_) internal pure returns (uint) {}
    
    function _mint(address user_, string memory tokenURI_) internal {}
    
}
    