pragma solidity ^0.5.16;
import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
contract SampleToken is IERC20, ERC20 {

    constructor(string memory _name, string memory _symbol, uint8 _decimals, uint _initialSupply) 
    IERC20(_name, _symbol, _decimals) public {
        require(_initialSupply > 0, "INITIAL_SUPPLY has to be greater than 0");
        _mint(msg.sender, _initialSupply);
    }
}