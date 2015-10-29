var app = angular.module('venueListing', []);

app.controller('VenueListingController', function($scope, $http) {
	$scope.venues = getVenues();
	console.log($scope.venues);
	$scope.cusinesIncludes = [];

	

});