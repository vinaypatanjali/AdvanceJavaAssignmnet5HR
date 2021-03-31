<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		<form action="uploadEmployeeDetails" method="post" enctype="multipart/form-data">
			<div class="card card-login">
				
				<!-- Form Header -->
				<div class="card-header">Upload</div>
				
				<!-- Form Body -->
				<div class="card-body">
				
				<!-- Form Row for Username-->
					<div class="form-group row">
						<label class="col-sm-3 col-form-label">Upload File<label
							class="asterisk">*</label></label>
						<div class="col-sm-8">
							<input type="file" name="csvFile" id="csvFile" class="form-control" required />
						</div>
					</div>
				
			

			</div>
				<!-- Form Footer -->
				<div class="card-footer text-muted">
					<input type="submit"/>
				</div>
		</form>


	</div>

</body>
</html>