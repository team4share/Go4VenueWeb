var app = angular.module('venueListing', []);
app.controller('VenueListingController', function($scope, $http) {
	$scope.itemsPerPage = 3;
	$scope.currentPage = 0;
	$scope.venues = getVenues();
	$scope.cusinesIncludes = [];
	$scope.amenities = getAmenities();
	$scope.venueTypes = getVenueTypes();
	$scope.cities = getCities();
	console.log($scope.cities);
	$scope.occasions = getOccasions();
	console.log($scope.cities[0]);
	$scope.orderProp= 'venueCapacity';
	$scope.selectedCity = $scope.cities[0];
	

	console.log($scope.venues.length);
	
	
	var updateVenuesData = function() {
		var venues_copy =[];
		venues_copy = angular.copy(getVenues());
		for(var i=0;i<venues_copy.length;i++) {
			var venueFacilities = venues_copy[i].amenities;
			var array = venueFacilities.split(",");
			$scope.venues[i].array = array;
		}
	}
	
	updateVenuesData();
	$scope.getLocalities = function() {
		console.log($scope.selectedCity);
		$http({
			method : 'POST',
			url : 'getLocalities',
			data : $scope.selectedCity,
			headers : {
				'Content-Type' : 'application/json'
			}
		}).success(function(response) {
			console.log(response)
			$scope.localities = response;
		});
	}
	if($scope.selectedCity!=null) {
		console.log($scope.selectedCity);
		$scope.getLocalities();
	}
	
	$scope.range = function() {
		var rangeSize = 4;
		var ps = [];
		var start;
		start = $scope.currentPage;
		if (start > $scope.pageCount() - rangeSize) {
			start = $scope.pageCount() - rangeSize + 1;
		}
		for (var i = start; i < start + rangeSize; i++) {
			if (i >= 0)
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
		return Math.ceil($scope.venues.length / $scope.itemsPerPage) - 1;
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
	
	var selectedOptionsForOccasion = [];
	var selectedOptionsForAmenities = [];
	var selectedOptionsForLocality = [];
	
	
	var venueOcassionsFilter = function(venueData,selectedValues) {
		if(selectedValues.length == 0) { 
			return true;
		}
		for(var i=0;i<selectedValues.length; i++) {
			if(venueData.venueOcassions.indexOf(selectedValues[i])!=-1) {
				return true;
			}
		}
		return false;
	}
	
	var localityFilter = function(venueData,selectedValues) {
		if(selectedValues.length == 0) { 
			return true;
		}
		for(var i=0;i<selectedValues.length; i++) {
			if(venueData.venueAddress.indexOf(selectedValues[i])!=-1) {
				return true;
			}
		}
		return false;
	}
	
	
	var amenitiesFilter = function(venueData,selectedValues) {
		if(selectedValues.length == 0) { 
			return true;
		}
		for(var i=0;i<selectedValues.length; i++) {
			if(venueData.venueFacilities.indexOf(selectedValues[i])!=-1) {
				return true;
			}
		}
		return false;
	}
	
	$scope.getSelectedOptionsForLocality = function() {
		var checkedValues  = [];
		var checkFlag=false;
		for (var i = 0; i <$scope.localities.length; i++) {
			if(($('#locality_'+i).prop("checked")) == true) {
				checkedValues.push($scope.localities[i].name);
				checkFlag = true;
			}
		}
		if(checkFlag==false){
			checkedValues = [];
		}
		selectedOptionsForLocality = checkedValues;
		
	}
	
	 $scope.getSelectedOptionsForOccasions = function() {
		
		var checkedValues  = [];
		var checkFlag=false;
		for (var i = 0; i <$scope.occasions.length; i++) {
			if(($('#occasion_'+i).prop("checked")) == true) {
				checkedValues.push($scope.occasions[i].name);
				checkFlag = true;
			}
		}
		if(checkFlag==false){
			checkedValues = [];
		}
		selectedOptionsForOccasion = checkedValues;
		// $('#spinnerModal').modal('hide');
		
	}
	 
	$scope.getSelectedOptionsForAmenities = function() {
		
			var checkedValues  = [];
			var checkFlag=false;
			for (var i = 0; i <$scope.amenities.length; i++) {
				if(($('#amenity_'+i).prop("checked")) == true) {
					checkedValues.push($scope.amenities[i].name);
					checkFlag = true;
				}
			}
			if(checkFlag==false){
				checkedValues = [];
			}
			selectedOptionsForAmenities = checkedValues;
			

		}

	$scope.applyFilter = function() {
		return function(venueData) {
			var filteredResult = venueOcassionsFilter(venueData,selectedOptionsForOccasion) && amenitiesFilter(venueData,selectedOptionsForAmenities) 
			&& localityFilter(venueData,selectedOptionsForLocality) ;
			return filteredResult;
		}
	}
	
});

angular.module('venueListing').filter('pagination', function() {
	return function(input, start) {
		start = parseInt(start, 10);
		return input.slice(start);
	};
}); 
