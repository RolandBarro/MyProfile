// Code goes here

//Controller Registration
(function () {
    app = angular.module('app', []);

    var controllerMain = function ($scope) {
        var person = {
            firstname: "Roland",
            lastname: "Barro"
        };

        $scope.message = "Welcome to AngularJS!";
        $scope.person = person;
    };
    app.controller('ControllerMain', controllerMain);

    var controllerHello = function ($scope) {
        $scope.greeting = { text: 'Hello!' };
    };
    app.controller('ControllerHello', controllerHello);

    var controllerCart = function ($scope) {
        $scope.items = [
          { title: 'Paint pots', quantity: 8, price: 3.95 },
          { title: 'Polka dots', quantity: 17, price: 12.95 },
          { title: 'Pebbles', quantity: 5, price: 6.95 }
        ];

        $scope.remove = function (index) {
            $scope.items.splice(index, 1);
        };
    };
    app.controller('ControllerCart', controllerCart);

    var controllerGitHubUserFetch = function ($scope, $http, $interval, $log) {

        var onRepos = function(response) {
            $scope.repos = response.data;
        };

        var onError = function (reason) {
            $scope.error = "Could not fetch the User Information.";
        };

        var onUserFetchUserComplete = function (response) {
            $scope.user = response.data;
            $http.get($scope.user.repos_url)
                .then(onRepos, onError);
        };

        var countDown = function() {
            $scope.timeleft -= 1;
            $scope.autosearch = "Automatically search in " + $scope.timeleft + "...";
            if ($scope.timeleft < 1) {
                $scope.searchUser($scope.username);
            }
        };

        var countDownInterval = null;

        var startCountDown = function() {
            countDownInterval = $interval(countDown, 1000, $scope.timeleft);
        };

        $scope.searchUser = function (username) {
            //$log.info("Searching for " + username);
            $http.get("https://api.github.com/users/" + username)
                .then(onUserFetchUserComplete, onError);
            if (countDownInterval) {
                $interval.cancel(countDownInterval);
                $scope.autosearch = null;
            }
        };

        $scope.username = "JammerCoder";
        $scope.sortRepo = "-stargazers_count";
        $scope.timeleft = 5;
        $scope.autosearch = "Automatically search in " + $scope.timeleft + "..."; 
        startCountDown();

    };
    app.controller('ControllerGitHubUserFetch', controllerGitHubUserFetch);
}());


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
