var app = angular.module("ControllerPage",[]);

var FirstController = function($scope){
	$scope.message = "A Message Attached To Our Scope";
};

app.controller("FirstController",["$scope", FirstController]);

var PersonController = function($scope){
	var person = {
			firstName: "John",
			lastName: "Smith",
			address: "123 Yonge St., Toronto"
	};
	$scope.person = person;	
};

app.controller("PersonController",["$scope", PersonController]);

var ServerController = function($scope, $http){
	$http.get("https://api.github.com/users/odetocode")
		.then(function(response){
			$scope.user = response.data;
		});
};

app.controller("ServerController",["$scope", "$http", ServerController]);