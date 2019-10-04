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


<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
		<a class="navbar-brand" href="/welcome">FJA Project Status</a>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/status">Status
				</a></li>
				<li class="nav-item"><a class="nav-link" href="/show-users">All
						Users</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> More Options</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>
		</div>
	</div>

	<form class="form-horizontal" method="POST" action="save-user"
		onsubmit="return validation()" autocomplete="off">

		<div class="form-group">
			<div class="row mb-md-5 mb-lg-5">
				<div class="cold-md-2 col-lg-2"></div>
				<div class="col-md-4 col-lg-4">
					<label class="control-label">Project Name</label>
					 <select
						class="form-control">
						<option value="BlueKC">BlueKC</option>
						<option value="IBC">IBC</option>
						<option value="Cigna">Cigna</option>
						<option value="VOYA">VOYA</option>
						<option value="Horizon">Horizon</option>
						<option value="Kansas">Kansas</option>
						<option value="PRU">PRU</option>
						<option value="PHP">PHP</option>
					</select>
				</div>

				<div class="col-md-4">
					<label class="control-label">Release Version</label> <input
						type="text" class="form-control" placeholder="Enter the latest Release version" />
				</div>
			</div>
			<hr class="col-md-8">
			
		<div class="form-group ">
			<input type="submit" class="btn btn-primary" value="Register" />
		</div>
	</form>

</body>