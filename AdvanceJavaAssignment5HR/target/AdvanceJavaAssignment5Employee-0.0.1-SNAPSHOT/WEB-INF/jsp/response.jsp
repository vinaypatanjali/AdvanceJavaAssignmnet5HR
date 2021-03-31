<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta charset="ISO-8859-1">
<meta name="keywords" content="VP">
<meta name="description" content="Made by Vinay Patanjali @ Nagarro">
<meta name="author" content="Vinay Patanjali">

<title>Not Found</title>

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

<link href="<c:url value="/resources/css/styleMy.css" />"
	rel="stylesheet">
	
</head>
<body>

<!-- NAVBAR -->
    <nav class="navbar sticky-top navbar-light">
        <div class="container-fluid nav navbar-nav navbar-center">
            <a class="navbar-brand" style="font-weight: bolder;" href="#">Employee Management System</a>
        </div>
    </nav>

	<!-- Container -->
	<div class="container min-vh-80">
		<!-- Login Form -->
		
			<div class="card card-login">

				<!-- Form Body -->
				<div class="card-body">

					<!-- Form Row for Username-->
					<div class="form-group row">
						<!-- Display Message -->
						<h1>${message}</h1>
					</div>
				</div>

				<!-- Form Footer -->
				<div class="card-footer text-muted">
					<!-- Target Button -->
					<button onclick="window.location='${target}'">${buttonValue}</button>
				</div>

			</div>


	</div>
</body>
</html>