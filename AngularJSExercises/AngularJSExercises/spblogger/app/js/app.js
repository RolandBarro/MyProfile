'use strict';

angular.module('myBookApp', [
    'myBookApp.controllers'
]);

angular.module('myBookApp').run(function ($rootScope) {
    $rootScope.title = 'Famous Books';
    $rootScope.name = 'Root Scope';
});
