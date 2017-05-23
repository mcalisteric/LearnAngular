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
<script src=<c:url value="/resources/js/controllers.js" />></script>
</head>
<body ng-app="ControllerPage">
	<h1>Angular Controllers</h1><br/>
	<div>
		The key to controllers with Angular is the ng-controller directive.<br/>
		This is specified as an attribute in an HTML tag, just like ng-app was.<br/>
		In ng-controller we specify the name of a controller. E.g. ng-controller="ControllerName"<br/>
		Controllers are just JS functions. To use a controller assign a function to a var with the name you specified.<br/>
		We don't invoke these functions, Angular does that for us.<br/>
		Angular can pass the $scope parameter to our controller function.<br/>
		Whatever we attach to $scope essentially serves as our model.<br/>
		Angular promotes MVC through controllers and helps with Separation of Concerns.
		<h4>Important: Angular DOES NOT find controllers with a global scope.</h4>
		You want to put your controllers in modules.
	</div>
	<div ng-controller="FirstController">
		<h3>This Div Will Create Our First Controller</h3>
		{{message}}<br/>
	</div>
	<div ng-controller="PersonController">
		<h3>This Div Has A Controller That Controls A Person Object</h3>
		{{person.firstName}} {{person.lastName}} lives at {{person.address}}.
		<h4>Be Careful: If you have a typo in a variable name (e.g. forgetting the f in person.firstName) it will show up as a blank and NOT give an error in console.</h4>
		The logic behind this is Angular may think you are trying to bind to data that doesn't exist yet, so throwing an error would be overkill in this scenario.<br/>
	</div>
	<div ng-controller="ServerController">
		<h3>This Div Has A Controller That Communicates With A Server Using $http (GitHub API used)</h3>
		{{user.name}} was used in the example by {{user.login}}<br/>
		$http encapsulates HTTP communication.<br/>
		The $http service is an object provided by Angular with methods you can use to make HTTP calls.<br/>
		$http is also passed as a parameter to your controller function.
		<h4>Note: HTTP communication is asynchronous and doesn't actually return your data immediately, so NEVER use the return value of an HTTP method in assignment.</h4>
		This is because HTTP methods return a Promise.<br/>
		A Promise is an object that promises to give you data in the future (could be data you need, a server error, etc.).<br/>
		Instead use the <em>promise.then</em> method with an argument <em>function(response)</em>.
		<h4>FWIW: $http with Angular will automatically convert JSON into a JS object.</h4>
	</div>
	<div>
		<a href="ngDirectives">Now let's talk about directives</a>
	</div>
</body>
</html>