// Code goes here

//Controller Registration
app = angular.module('app', []);


var ControllerMain = function ($scope) {
    var person = {
        firstname: "Roland",
        lastname: "Barro"
    };

    $scope.message = "Welcome to AngularJS!";
    $scope.person = person;
};
app.controller('ControllerMain', ControllerMain);

var ControllerHello = function($scope) {
    $scope.greeting = { text: 'Hello!' };
};
app.controller('ControllerHello', ControllerHello);

/*
var work = function () {
    console.log("Study Hard!");
};


var dowork = function (f) {
    console.log("Start of work...");
    try {
        f();
    }
    catch (ex) {
        console.log(ex);
    }
    console.log("End of work!");
};

dowork(work);

//revealing module pattern
var createWorker = function () { //declearing a global variable

    var workCount1 = 0; //private var
    var workCount2 = 0;

    var task1 = function () {
        workCount1 += 1;
        console.log("task1 "+workCount1);
    };

    var task2 = function () {
        workCount2 += 1;
        console.log("task2 "+workCount2);
    };

    return {
        job1: task1,
        job2: task2
        //reads as jobN points to task 1 and so on...
    };

};

var worker = createWorker(); //declearing a global variable

worker.job1();
worker.job2();
worker.job2();
worker.job2();
*/
//when all the function is placed inside a (function(){}()); code block it is called IIFE or 
//Immediately Invoked Function Expression
