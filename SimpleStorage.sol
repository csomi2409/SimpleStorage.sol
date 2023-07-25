// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage{         //Name of the contract

    //this is a comment
    uint256 favouriteNum;        //this has a pre-defined number of 0

    struct People {             //The structure of People (number and name)
        uint256 favouriteNum;   //Numbers
        string name;            //Words
    }

    People[] public people;     //Array which is a public view (blue button) that we can call to see what it has
    mapping(string => uint256) public nameToFavNum;     //maps the name to his/her favNum and we can call this to see His/Her favNum

    function store(uint256 _favouriteNum) public {      //Store function which stores the number we gave to it
        favouriteNum = _favouriteNum;
    }

    function retrieve() public view returns(uint256) {  //view is for grabbing some data from the blockchain
        return favouriteNum;                            
        }
                    //"string memory" is essential because you need to store the string somewhere. You can also use 'storage' or 'memory'
    function addPerson(string memory _name, uint256 _favouriteNum) public {         //addPerson function grabs the name and the favNum and adds it to the 'People array'
        people.push(People( _favouriteNum,_name));      //Use '.push' to add to an array
        nameToFavNum[_name] = _favouriteNum;            //Return the favNum of the given name
    }
}

