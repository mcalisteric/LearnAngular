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
<script 
	src=<c:url value="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js" />></script>
<script src=<c:url value="/resources/js/router.js" />></script>
</head>
<body ng-app="Routing">
	<h1>Routing</h1>
	<div>You will need angular-route.js, which gives us a module ngRoute.<br/>
	ngRoute has a component $routeProvider where we specify routing rules.<br/>
	There's a few keys to routing:<br/>
	<ol>
		<li>When declaring your module, remember to specify ngRoute as a dependency</li>
		<li>Use .config to specify your $routeProvider options</li>
		<li>$routeProvider has a .when function that takes a location from a url (e.g. /main or /users/jdoe)</li>
		<li>In the body of .when you specify a templateUrl and controller to be used when you are in a given location</li>
		<li>In an html element on your page you can add an ng-view attribute. This is where your templateUrl will be loaded</li>
	</ol>
	</div>
	<div ng-controller="RouteControl">
		<h3>Watch routing in action</h3>
		Pay attention to the url when you click a button. Notice we're still on the same page though.<br/>
		<form>
			<input type="submit" value="BlueJays" ng-click="showJays()"/>
			<input type="submit" value="CN Tower" ng-click="showCN()"/>
			<input type="submit" value="Clear" ng-click="clear()"/>
		</form>
		<div ng-view></div>
	</div>
</body>
</html>