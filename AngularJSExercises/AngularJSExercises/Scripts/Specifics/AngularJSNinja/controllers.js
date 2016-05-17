(function () {

    var controllerFinance = function ($scope) {
        $scope.salary = 0;
        $scope.percentage = 0;

        $scope.result = function() {
            return $scope.salary * $scope.percentage * 0.01;
        };
    };
    myApp.controller('ControllerFinance', controllerFinance);

    /*myApp.controller('ControllerFinance', function ($scope) {
        $scope.salary = 0;
        $scope.percentage = 0;

        $scope.result = function() {
            return $scope.salary * $scope.percentage * 0.01;
        };
    });
    myApp.controller('ControllerFinance');*/
    
    /*angular.module('myApp', []).controller('ControllerGreeting', function($scope) {
        $scope.now = new Date();
        $scope.greeting = 'Hello';
    });*/

    var controllerGreeting = function($scope) {
        $scope.now = new Date();
        $scope.helloMessages = ['Hello', 'Bonjour', 'Hola', 'Ciao', 'Hallo'];
        $scope.greeting = $scope.helloMessages[0];
        $scope.getRandomHello = function() {
            $scope.greeting = $scope.helloMessages[parseInt((Math.random() * $scope.helloMessages.length))];
        };
    };
    myApp.controller('ControllerGreeting', controllerGreeting);

}());