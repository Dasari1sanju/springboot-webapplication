<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
<link
	href="http://localhost:8081/webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="http://localhost:8081/webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="http://localhost:8081/webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<spring:url value="/employee/save" var="saveURL" />
		<h2>Employee</h2>
		<form:form modelAttribute="employeeForm" method="post"
			action="${saveURL }" cssClass="form">
			<form:hidden path="employeeId" />
			<div class="form-group">
				<lable for="firstName">First Name</lable>
				<form:input path="firstName" cssClass="form-control" id="firstName" />
			</div>
			<div class="form-group">
				<lable for="lastName">Last Name</lable>
				<form:input path="lastName" cssClass="form-control" id="lastName" />
			</div>
			<div class="form-group">
				<lable for="email">Email</lable>
				<form:input path="email" cssClass="form-control" id="email" />
			</div>
			<div class="form-group">
				<lable for="phone">Phone</lable>
				<form:input path="phone" cssClass="form-control" id="phone" />
			</div>
			<div class="form-group">
				<lable for="jobTitle">Job Title</lable>
				<form:input path="jobTitle" cssClass="form-control" id="jobTitle" />
			</div>
			<button type="submit" class="btn btn-primary">Save</button>
		</form:form>
	</div>
</body>
</html>