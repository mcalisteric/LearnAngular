<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Learning Angular</title>
<link rel="stylesheet" type="text/css" href=<c:url value="/resources/css/learnAngular.css" />>
<script
	src=<c:url value="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js" />></script>
<script src=<c:url value="/resources/js/calculator.js" />></script>
</head>
<body ng-app="Calculator">
	<h1>Angular Directives</h1><br/>
	<div>
		Refresher: We attach data to scope to encourage MVC architecture.<br/>
		We get the model data (data attached to scope) by using binding expressions.<br/>
		Binding expressions (sometimes just called expressions or angular expressions) are one type of directive.<br/>
	</div>
	<div ng-controller="CalcController">
		<h3>Here we have a basic calculator</h3>
		This form uses ng-model to push the numbers submitted into the $scope object.<br/>
		Even if the field specified does not exist in $scope, ng-model will create that field for you.<br/>
		We've also attached ng-click to the various submit button. ng-click usually has a function that is specified in your model ($scope)<br/>
		<h4>Note: ng-submit as a form attribute might be better depending on your form (see what happens when you leave a field blank here while using ng-click)</h4>
		Last Calculation: <br/>
		{{ calcResult }} <br/>
		Numbers working with: <br/>
		{{ number1 }} <br/>
		{{ number2 }} <br/>
		<form name="calculator">
			<input type="number" required="required" placeholder="First Number" ng-model="number1"/><br/>
			<input type="number" required="required" placeholder="Second Number" ng-model="number2"/><br/>
			<input type="submit" name="addition" value="Add" ng-click="addition()"/>
			<input type="submit" name="subtraction" value="Subtract" ng-click="subtraction()"/>
			<input type="submit" name="division" value="Divide" ng-click="division()"/>
			<input type="submit" name="Multiply" value="Multiply" ng-click="multiply()"/><br/>
		</form>
	</div>
	<div>
		<h3>You can use ng-repeat like a foreach loop in Java</h3>
		Unfortunately, we don't have a lot of good data to demo this with.<br/>
		The syntax is easy though. Just use ng-repeat="var in data" and manipulate var as if it were in $scope.<br/>
	</div>
	<div>
		<h3>You can also hide and show elements</h3>
		You do this with ng-show and ng-hide.<br/>
		ng-show shows an element if it is given a 'true' value (likewise for ng-hide and hiding elements).<br/>
		Type something for it to show in the hidden section.<br/>
		<form>
			<input type="text" ng-model="showMe" /><br/>
		</form>
		<div ng-show="showMe">
			<h4> {{showMe}} </h4>
		</div>
	</div>
	<div>
		<h3>A bit on filters</h3>
		You can pipe an expression into a filter using the '|' symbol.<br/>
		After the filter name you can set optional parameters after a colon (':').<br/>
		You can pipe the result of a filter into another filter (think Bash).<br/>
		<h4>There's lots of filters, so you're best off Googling them, their parameters, etc.</h4>
	</div>
	<div>
		<a href="ngServices">Now let's talk more about Services</a>
	</div>
</body>
</html>