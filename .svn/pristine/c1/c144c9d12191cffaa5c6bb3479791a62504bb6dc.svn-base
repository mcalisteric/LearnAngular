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
<script src=<c:url value="/resources/js/modules.js" />></script>
</head>
<body>
	<h1>Learning Angular</h1>
	<br />
	<div>
		<h3>This Is Our First Div</h3>
		There are two requirements for building with Angular:
		<ol>
			<li>A &lt;script&gt; importing angular.js</li>
			<li>An ng-app directive specified as an attribute in your HTML (e.g. In a div tag)</li>
		</ol>
		You only have one ng-app directive per page.<br />
		The ng-app directive specifies the area controlled by Angular.<br />
		That is: Angular will only work in the section of the DOM that contains this directive.<br />
		This first div does not have the ng-app directive as an attribute so it is not controlled by Angular.<br />
		So if we enter the expression {{90 / 6}} it will not evaluate.<br />
	</div>
	<div ng-app="arg">
		<h3>This Is Our Second Div</h3>
		This second div DOES contain the ng-app directive as an attribute<br />
		So now if we enter the binding expression from before it will output <em>{{90 / 6}}</em><br />
		You may want to consider puttig ng-app in your &lt;html&gt; tag so Angular can work on your entire page.<br/>
		If you are working with a module, you need to specify the module name in <em>ng-app="arg"</em>.<br/>
	</div>
	<div>
		<a href="ngController">Time To Learn About Controllers In Angular</a>
	</div>
</body>
</html>