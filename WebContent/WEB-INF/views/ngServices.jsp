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
<script src=<c:url value="/resources/js/timerCount.js" />></script>
</head>
<body ng-app="TimerCount">
	<h1>Services</h1>
	<div>
		Directives can be thought of as sitting between Model and View as they move data back and forth.<br/>
		Services can provide logic not directly related to a model (validation checks, manage cookies, etc.).<br/>
		Services are never directly used in a view, but they offer functionality to a model or directive.<br/>
	</div>
	<div ng-controller="TimeController">
		<h3>Timer Service</h3>
		{{ counter }} <br/>
		Here we have a counter that increments every second.<br/>
		We could use setInterval (provided by JS), which runs repeatedly at intervals of x milliseconds (you can also research setTimeout).<br/>
		In Angular, setInterval and setTimeout are wrapped by $interval and $timeout services respectively.
		<h4>There's lots of services, you'll have to look up most of them depending on your needs.</h4>
	</div>
	<div>
		<h3>You can create custom services</h3>
		You may want to do this for any of these reasons:<br/>
		<ol>
			<li>Make Reusable Logic</li>
			<li>Share Data Between Views</li>
			<li>Manage Complexity</li>
		</ol>
		<h4>Note: A service is only ever instantiated once (singleton) per application. If you use $x in multiple controllers they will use the same instance of $x</h4>
	</div>
	<div ng-controller="FizzController">
		<h3>This section uses a custom service</h3>
		Here we do the classic FizzBuzz problem and use a custom service in our controller to print the needed string.<br/>
		<form ng-submit="showFizz()">
			Enter a number<input type="number" required="required" ng-model="fizzMe"/><br/>
			<input type="submit" value="FizzBuzz"/>
			<br/>
		</form>
		{{ fizzString }} <br/>
	</div>
	<div>
		<a href="ngRouting">Now for a discussion on Routing</a>
	</div>
</body>
</html>