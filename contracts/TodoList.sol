pragma solidity ^0.5.0;

contract TodoList {
    uint public tasksCount = 0;

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public{
        createTask("check out dappunivercity.com");
    }

    function createTask(string memory _content) public {
        tasksCount ++;
        tasks[tasksCount] = Task(tasksCount, _content, false);

    }

    
}