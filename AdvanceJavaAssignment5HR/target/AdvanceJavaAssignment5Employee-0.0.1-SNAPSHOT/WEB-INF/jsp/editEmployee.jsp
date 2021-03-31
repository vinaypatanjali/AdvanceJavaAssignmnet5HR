<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>

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
		<form action="${pageContext.request.contextPath}/updateEmployee" method="post" id="employeeEditForm">
			<div class="card card-login">

				<!-- Form Header -->
				<div class="card-header center">Edit Employee</div>

				<!-- Form Body -->
				<div class="card-body">

					<!-- Form Row for Departure Location-->
					<div class="form-group row">
						<label for="employeeCode" class="col-sm-3 col-form-label">Employee Code</label>
						<div class="col-sm-8">
							<input type="text" name="employeeCode" value="${employee.id}" class="form-control"
								id="employeeCode" readonly/>
						</div>
					</div>

					<br>

					<!-- Form Row for Arrival Location-->
					<div class="form-group row">
						<label for="employeeName" class="col-sm-3 col-form-label">Employee Name<label class="asterisk">*</label>
						</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="employeeName"
								name="employeeName" value="${employee.employeeName}" pattern="[A-Za-z ]{1,32}" title="Use alphabets and space only" required />
						</div>
					</div>

					<br>

					<!-- Form Row for Flight Date-->
					<div class="form-group row">
						<label for="inputPassword" class="col-sm-3 col-form-label">Employee Location<label class="asterisk">*</label>
						</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" value="${employee.employeeLocation}" id="employeeLocation"
								name="employeeLocation" required />
						</div>
					</div>

					<br>

					<!-- Form Row for Flight Class-->
					<div class="form-group row">
						<label for="employeeEmail" class="col-sm-3 col-form-label">Employee Email<label class="asterisk">*</label>
						</label>
						<div class="col-sm-8">
							<input type="email" class="form-control" id="employeeEmail" value="${employee.employeeEmail}"
								name="employeeEmail" required />
						</div>
					</div>

					<br>

					<!-- Form Row for Output Preference-->
					<div class="form-group row">
						<label for="employeeDOB" class="col-sm-3 col-form-label">Employee DOB<label class="asterisk">*</label>
						</label>
						<div class="col-sm-8">
							<input type="date" class="form-control" id="employeeDOB" value="${employee.employeeDOB}"
								name="employeeDOB" required />
						</div>
					</div>

					<br>

				</div>

				<!-- Form Footer -->
				<div class="card-footer text-muted">
					<button type="submit">Update</button><!-- 
					<button  type="button" onclick="window.location='logout'">Logout</button> -->
				</div>

			</div>
		</form>


	</div>
</body>
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>
</html>