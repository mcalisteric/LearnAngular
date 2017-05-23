/*This is a sample js file that demonstrates how modules can be used
You may want to review js concepts such as scope,patterns, IIFE, etc.*/

var app = angular.module("arg", []);

/* Later we'd have app.controller("ControllerName",["$argInController",controllerObject]) */ 

var createWorker = function(){
	
	var task1 = function(){
		console.log("task1");
	};
	
	var task2 = function(){
		console.log("task2");
	};
	
	return {
		job1: task1,
		job2: task2
	};
};

var worker = createWorker();

worker.job1();
worker.job2();