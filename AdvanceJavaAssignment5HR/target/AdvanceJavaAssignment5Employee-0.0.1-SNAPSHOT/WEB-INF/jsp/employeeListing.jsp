<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<meta name="keywords" content="VP">
<meta name="description" content="Made by Vinay Patanjali @ Nagarro">
<meta name="author" content="Vinay Patanjali">


<title>Flight Search Results</title>
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

			<div class="card card-login">
			
				
				<!-- Header -->
				<div class="card-header center">Employees</div>

				<!-- Form Body -->
				<div class="card-body">
				
				<div class="right">
				<input type="button" onclick="window.location='uploadCSV'" value="Upload Employee Details"/>
				<input type="button" onclick="window.location='downloadCSV'" value="Download Employee Details"/>
				</div>
				<br/>
				
	
					<!-- Found FLight Details are listed in the below table -->
					<table class="card-table table table-bordered tableFixHead"
						id="employeeTable">

						<!-- Table Head -->
						<thead class="sticky">
							<tr>
								<th scope="col">Code</th>
								<th scope="col">Name</th>
								<th scope="col">Location</th>
								<th scope="col">Email</th>
								<th scope="col">Date of Birth</th>
								<th scope="col">Action</th>
							</tr>
						</thead>

						<!-- Table Body -->
						<tbody>
							<!-- Loop to list flight details -->
							<c:forEach items="${list}" var="element">

								<!-- Table row -->
								<tr>
									<td>${element.id}</td>
									<td>${element.employeeName}</td>
									<td>${element.employeeLocation}</td>
									<td>${element.employeeEmail}</td>
									<td><fmt:formatDate type="date"
											value="${element.employeeDOB}" /></td>
									<td><button onclick="window.location='getEmployee/${element.id}'">Edit</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
				<!-- Footer -->
					
					<div class="card-footer text-muted">
						<input type="button" onclick="window.location='logout'" value="Logout"/>
					</div>
			</div>


	</div>


</body>

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>

</html>