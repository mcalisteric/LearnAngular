(function(){

	var app = angular.module("TimerCount",[]);

	var Fizzy = function(){
		
		var printFB = function(counter){
			var result = "0";
			if(counter <= 0){
				return result;
			}
			else{
				for(i = 1; i <= counter; i++){
					if(i % 3 == 0 && i % 5 == 0){
						result += " - fizzbuzz";						
					}
					else if(i % 5 == 0){
						result += " - buzz";
					}
					else if(i % 3 == 0){
						result += " - fizz";
					}
					else{
						result += " - " + i;
					}
				}
				return result;
			}
		};
		
		return{
			printFB: printFB
		};
		
	};
	
	app.factory("FizzBuzz", Fizzy);
	
	var FizzController = function($scope, FizzBuzz){
		
		$scope.showFizz = function(){
			$scope.fizzString = FizzBuzz.printFB($scope.fizzMe);
		};
		
	};
	
	
	app.controller("FizzController", ["$scope", "FizzBuzz", FizzController]);

	var TimeController = function($scope, $interval, $log){
			
		var counterUp = function(){
			$log.info("The counter has increased");
			$scope.counter += 1;
		};

		var startTimer = function(){
			$log.info("The timer is running");
			$interval(counterUp, 1000);
		};
		
		$scope.counter = 0;
		
		startTimer();
	};
	
	app.controller("TimeController",["$scope", "$interval", "$log", TimeController]);

	
}());