// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleStorage {

    uint256 private favoriteNumber; // Stores the user's favorite number
    uint256[] public favoriteNumbers; // Dynamic array to store multiple favorite numbers

    struct Person {
        string name;            // Person's name
        uint256 favoriteNumber; // Their favorite number
    }

    Person[] public people; // Array of Person structs to store multiple people's data
    mapping(string => uint256) public nameToFavoriteNumber; // Mapping from names to favorite numbers

    enum ContractState { 
        Active,   // State representing an active contract
        Inactive  // State representing an inactive contract
    }

    ContractState public state; // State variable to store the current contract state

    // Event that logs when the favorite number is updated
    event NumberUpdated(uint256 newFavoriteNumber);

    // Constructor to initialize the state as Active
    constructor() {
        state = ContractState.Active;
    }

    // Part 3: Implement Core Functions
    // Store a number as the favorite number
    function storeNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        emit NumberUpdated(_favoriteNumber); // Emit event when favorite number is updated
    }

    // Retrieve the favorite number
    function getFavoriteNumber() public view returns (uint256) {
        return favoriteNumber;
    }

    // Check if favorite number is greater than a given number
    function isGreaterThan(uint256 _value) public view returns (bool) {
        return favoriteNumber > _value;
    }

    // Sum numbers from 1 to the favorite number using a loop
    function sumToFavoriteNumber() public view returns (uint256 sum) {
        for (uint256 i = 1; i <= favoriteNumber; i++) {
            sum += i;
        }
    }

    // Part 4: Apply Visibility Specifiers
    // Internal function that returns a simple string
    function internalFunction() internal pure returns (string memory) {
        return "This is an internal function";
    }

    // Wrapper function to expose internalFunction
    function callInternalFunction() public pure returns (string memory) {
        return internalFunction();
    }

    // External function that returns a string
    function externalFunction() external pure returns (string memory) {
        return "This is an external function";
    }

    // Public function that calls externalFunction using `this`
    function testExternalFunction() public view returns (string memory) {
        return this.externalFunction();
    }

    // Part 5: Implement Arrays, Structs, Enums, and Mappings
    // Add a favorite number to the dynamic array
    function addFavoriteNumber(uint256 _favoriteNumber) public {
        favoriteNumbers.push(_favoriteNumber);
    }

    // Add a person to the people array and map their favorite number
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(Person(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber; // Update mapping with person's name and favorite number
    }

    // Set contract state to Active
    function activateContract() public {
        state = ContractState.Active;
    }

    // Set contract state to Inactive
    function deactivateContract() public {
        state = ContractState.Inactive;
    }

    // Check if the contract is currently active
    function isActive() public view returns (bool) {
        return state == ContractState.Active;
    }

    // Part 4: Utilize Storage, Memory, and Calldata
    // Demonstrate use of a memory variable
    function temporaryCalculation(uint256 _value) public pure returns (uint256) {
        uint256 temp = _value * 2; // Memory variable for temporary calculation
        return temp;
    }

    // Demonstrate use of calldata with an input string
    function processCalldataString(string calldata _input) public pure returns (string memory) {
        return _input; // Process calldata without modifying the input
    }
}
