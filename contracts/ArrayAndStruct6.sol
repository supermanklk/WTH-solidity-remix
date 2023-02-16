// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ArrayAndStruct6 {
    uint[8] arry1;
    bytes1[5] array2;
    address[100] array3;

    uint[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;

    struct Student {
        uint256 id;
        uint256 score;
    }

     // 将uint 0， 1， 2表示为Buy, Hold, Sell
    enum ActionSet { Buy, Hold, Sell }

    // 创建enum变量 action
    ActionSet action = ActionSet.Buy;



    Student student;



    uint[] array8 = new uint[](5);
    bytes array9 = new bytes(9);


     function initArray() external pure returns(uint[] memory){
        uint[] memory x = new uint[](3);
        x[0] = 1;
        x[1] = 3;
        x[2] = 4;
        return(x);
    }  
    function arrayPush() public returns(uint[] memory){
        uint[2] memory a = [uint(1),2];
        array4 = a;
        array4.push(3);
        return array4;
    }

    function initStudent1() external {
        Student storage _student = student;
        _student.id = 11;
        _student.score = 100;
    }

    function getStudent() public view returns(Student memory){
        return student;
    }

    function initStudent2() external {
        student.id = 1;
        student.score = 80;
    }

    function initStudent3() external{
        student = Student(3, 90);
    }

    function initStudent4() external {
        student = Student({id: 4, score: 90});
    }

      // enum可以和uint显式的转换
    function enumToUint() external view returns(uint){
        return uint(action);
    }


}