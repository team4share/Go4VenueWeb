var app = angular.module('app', []);

app.controller('SearchController', function($scope, $http) {
	
	$scope.occasions = [];
	$scope.locations = [];

	$scope.init = function () {
		var occasion = {
				"name" : 'Wedding'
		}
		$scope.occasions.push(occasion);
	}
});