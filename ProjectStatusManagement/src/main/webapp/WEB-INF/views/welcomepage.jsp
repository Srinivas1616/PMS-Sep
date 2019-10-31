<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>FJA | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<!-- Registartion Validation -->

<script type="text/javascript"
	src="resources/js/registrationValidation.js"></script>

<style>
body {
	overflow-x: hidden;
}
</style>

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- <div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">FJA Project Status</a>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a class="nav-link" href="/login">Login</a></li>
					<li><a href="/register">New Registration</a></li>
					<li><a href="/show-users">All Users</a></li>
				</ul>
			</div>
		</div>
	</div> -->

	<div class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
		<a class="navbar-brand" href="/welcome">FJA Project Status</a>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/login">Login
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="/register">New
						Registration</a></li>
				<li class="nav-item"><a class="nav-link" href="/status">Status
				</a></li>
				<li class="nav-item"><a class="nav-link" href="/show-users">All
						Users</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Dropdown link </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>
		</div>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h2>Welcome to FJA PSM</h2>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_REGISTER'}">
			<div class="row">
				<div class="col-md-2 col-sm-2"></div>
				<div class="col-md-8 col-sm-8">
					<h3>New Registration</h3>
					<hr>
					<form class="form-horizontal" method="POST" action="save-user"
						onsubmit="return validation()" autocomplete="off">
						<input type="hidden" name="id" value="${user.id }" />


						<div class="form-group">
							<label class="control-label col-md-3">Username</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="username"
									id="username" value="${user.username }" /> <span
									id="spanUsername" class="text-danger font-weight-bold"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">First Name</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="firstname"
									id="firstname" value="${user.firstname }" /> <span
									id="spanFirstname" class="text-danger"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Last Name</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="lastname"
									id="lastname" value="${user.lastname }" /> <span
									id="spanLastname" class="text-danger"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Age </label>
							<div class="col-md-3">
								<input type="text" class="form-control" name="age" id="age"
									value="${user.age }" /> <span id="spanAge" class="text-danger"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Password</label>
							<div class="col-md-7">
								<input type="password" class="form-control" name="password"
									id="password" value="${user.password }" /> <span
									id="spanPassword" class="text-danger"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Confirm Password</label>
							<div class="col-md-7">
								<input type="password" class="form-control" id="conPassword"
									name="confirmPassword" id="conpassword" /> <span
									id="spanConPassword" class="text-danger"></span>
							</div>
						</div>

						<div class="form-group ">
							<input type="submit" class="btn btn-success btn-rounded" value="Register" />
						</div>
					</form>

				</div>
				<div class="col-md-2 col-sm-2"></div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="update-user">
					<input type="hidden" name="id" value="${user.id }" />


					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">First Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="firstname"
								value="${user.firstname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="lastname"
								value="${user.lastname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Age </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="age"
								value="${user.age }" />
						</div>
					</div>
					<%-- <div class="form-group" >
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div> --%>
					<div class="form-group ">
						<input type="submit" class="btn btn-success" value="Update" />
					</div>
				</form>
			</div>
		</c:when>


		<c:when test="${mode=='ALL_USERS'}">
			<div class="container text-center" id="tasksDiv">
				<h3>All Users</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Age</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users}">
								<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>
									<td><a href="/delete-user?id=${user.id}"><span
											class="glyphicon glyphicon-scissors">delete</span></a></td>
									<td><a href="/edit-user?id=${user.id }"><span
											class="glyphicon glyphicon-pencil">edit</span></a></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_LOGIN'}">
			<div class="container text-center">
				<h3>User Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="login-user">
					<c:if test="${not empty error}">
						<div class="alert alert-danger">
							<c:out value="${error}"></c:out>
						</div>

					</c:if>
					<div class="form-group">

						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${user.username }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>

					<div class="form-group ">
						<input type="submit" class="btn btn-success btn-md" value="Login" />
					</div>
				</form>
			</div>
		</c:when>


	</c:choose>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
</body>
</html>

