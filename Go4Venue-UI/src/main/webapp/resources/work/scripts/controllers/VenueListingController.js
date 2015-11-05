var app = angular.module('venueListing', []);

app.controller('VenueListingController', function($scope, $http) {
	$scope.itemsPerPage = 3;
	$scope.currentPage = 0;
	$scope.venues = getVenues();
	console.log($scope.venues);
	$scope.cusinesIncludes = [];

	$scope.amenities = getAmenities();
	
	$scope.venueTypes = getVenueTypes();
	$scope.cities = getCities();
	$scope.occasions = getOccasions();
	
	console.log($scope.venueTypes);
	 $scope.range = function() {
		    var rangeSize = 4;
		    var ps = [];
		    var start;

		    start = $scope.currentPage;
		      // console.log($scope.pageCount(),$scope.currentPage)
		    if ( start > $scope.pageCount()-rangeSize ) {
		      start = $scope.pageCount()-rangeSize+1;
		    }

		    for (var i=start; i<start+rangeSize; i++) {
		      if(i>=0) 
		         ps.push(i);
		    }
		    return ps;
		  };

		  $scope.prevPage = function() {
		    if ($scope.currentPage > 0) {
		      $scope.currentPage--;
		    }
		  };

		  $scope.DisablePrevPage = function() {
		    return $scope.currentPage === 0 ? "disabled" : "";
		  };

		  $scope.pageCount = function() {
		    return Math.ceil($scope.venues.length/$scope.itemsPerPage)-1;
		  };

		  $scope.nextPage = function() {
		    if ($scope.currentPage < $scope.pageCount()) {
		      $scope.currentPage++;
		    }
		  };

		  $scope.DisableNextPage = function() {
		    return $scope.currentPage === $scope.pageCount() ? "disabled" : "";
		  };

		  $scope.setPage = function(n) {
		    $scope.currentPage = n;
		  };

});

angular.module('venueListing').filter('pagination', function()
		{
		  return function(input, start) {
		    start = parseInt(start, 10);
		    return input.slice(start);
		  };
		});