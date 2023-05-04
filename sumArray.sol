pragma solidity ^0.8.0;

contract SimpleControlStructures{

    uint256[] public numbers;

    function populateNumbers(uint limit) public{

        delete numbers;

        for(uint i = 0; i <= limit; i++){

            if(i%2 ==0){
                numbers.push(i);
            }
        }
    }

    function getEvenNumbersSum() public view returns (uint256){

        uint sum = 0;

        for(uint i = 0; i < numbers.length; i++){

            uint number = numbers[i];
            if(number%2 ==0){
                sum += number;
            }
        }

        return sum;
    }

}