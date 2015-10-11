var myApp = angular.module('myApp');
  
myApp.controller('ContactController', ['$scope', function($scope) {
    $scope.contacts = ["hi@email.com", "hello@email.com"];
 
    $scope.add = function() {
        $scope.contacts.push($scope.contact);
        $scope.contact = "";
    }
}]);
/*angular.module('app', []).controller('ContactController', ['$scope', function ContactController($scope) {
    $scope.contacts = ["abcd@gmail.com", "abcd@yahoo.co.in"];

    $scope.add = function() {
        $scope.contacts.push($scope.newcontact);
        $scope.newcontact = "";

    };
}]);
*/