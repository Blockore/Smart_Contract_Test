pragma solidity ^0.4.21;

contract InfoContract {
    
    event Instructor(
        string name,
        uint age
    );
    
    event showage(
        string name,
        uint age
    );
   
    mapping (string => uint) nametoage;
  
    function setInfo(string _fName, uint _age) public {
        nametoage[_fName] = _age;
        emit Instructor(_fName,_age);
    }

    function getInfo(string name) public returns(uint){
        emit showage(name,nametoage[name]);
        return (nametoage[name]);
    }
}
