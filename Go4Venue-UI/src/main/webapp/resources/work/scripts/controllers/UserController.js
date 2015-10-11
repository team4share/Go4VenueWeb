var app = angular.module('app', []);
app.controller('UserController', function($scope, $http) {
	$scope.submit = function(formData) {
		console.log(formData.userType)
		$http({
			method : 'POST',
			url : 'registerUser',
			data : formData,
			headers : {
				'Content-Type' : 'application/json'
			}
		}).success(function(response) {
			
			alert("Successfully Registered.");

		});
	}
});