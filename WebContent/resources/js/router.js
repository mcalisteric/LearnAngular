(function(){

	var app = angular.module("Routing",["ngRoute"]);

	app.config(function($routeProvider) {
		  $routeProvider
		  .when("/", {
		    templateUrl : "resources/empty.jsp"
		  })
		  .when("/blueJays/", {
		    templateUrl : "resources/blueJays.jsp"
		  })
		  .when("/cn/", {
		    templateUrl : "resources/cnTower.jsp"
		  })
		  .otherwise({redirectTo:"/"})
	});
	
	var RouteControl = function($scope, $location){
		
		$scope.clear = function(){
			$location.path("/");			
		};
		
		$scope.showJays = function(){
			$location.path("/blueJays/");			
		};
		
		$scope.showCN = function(){
			$location.path("/cn/");			
		};
		
	};
	
	app.controller("RouteControl",["$scope", "$location", RouteControl]);
	
}());