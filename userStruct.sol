pragma solidity ^0.8.0;

contract SimpleStruct{

    struct User {
            uint id;
            string name;
            uint balance;
    }

    mapping(uint => User) public users;

    function addUser(uint user_id, string memory user_name, uint initial_balance) public{

        users[user_id] = User(user_id, user_name, initial_balance);
    }

    function updateUserBalance(uint user_id, uint newBalance) public{

        users[user_id].balance = newBalance;
    }

    function retrieveBalance(uint user_id) public view returns (uint){

        return users[user_id].balance;

    }

}