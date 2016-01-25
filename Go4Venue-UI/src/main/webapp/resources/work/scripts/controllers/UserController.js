
var app = angular.module('app', []);
app.controller('UserController', function($scope, $http) {
	$scope.submit = function(formData) {
		console.log(formData.userType)
		alert('hi');
		$http({
			method : 'POST',
			url : 'registerUser',
			data : formData,
			headers : {
				'Content-Type' : 'application/json'
			}
		}).success(function(response) {
			console.log(response)
			alert("Successfully Registered.");

		});
	}	
	$scope.login = function(loginInfo) {
		$http({
			method : 'POST',
			url : 'loginUser',
			data : formData,
			headers : {
				'Content-Type' : 'application/json'
			}
		}).success(function(response) {
			console.log(response)
			alert("Successfully Registered.");

		});
	}
});