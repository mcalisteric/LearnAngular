var app = angular.module("Calculator",[]);

var CalcController = function($scope){
	
	$scope.addition = function(){
		var result = $scope.number1 + $scope.number2;
		$scope.calcResult = $scope.number1 + " + " + $scope.number2 + " = " + result;
	};
	
	$scope.subtraction = function(){
		var result = $scope.number1 - $scope.number2;
		$scope.calcResult = $scope.number1 + " - " + $scope.number2 + " = " + result;
	};
	
	$scope.division = function(){
		if($scope.number2 != 0){
			var result = $scope.number1 / $scope.number2;
			$scope.calcResult = $scope.number1 + " / " + $scope.number2 + " = " + result;			
		}
		else{
			$scope.calcResult = "Unable to calculate. Can't divide by 0";
		}
	};
	
	$scope.multiply = function(){
		var result = $scope.number1 * $scope.number2;
		$scope.calcResult = $scope.number1 + " * " + $scope.number2 + " = " + result;
	};
	
};

app.controller("CalcController",["$scope", CalcController]);