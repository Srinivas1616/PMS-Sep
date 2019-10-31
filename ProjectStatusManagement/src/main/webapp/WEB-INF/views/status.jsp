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
<style>
body {
	overflow-x: hidden;
}
</style>

<script type="text/javascript" src="resources/js/statusValidation.js"></script>


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

	<form class="form-horizontal" method="POST" action="welcome"
		onsubmit="return statusValidation()" autocomplete="off">

		<div class="form-group">
			<div class="row mb-md-4 mb-lg-4">
				<div class="col-md-2 col-lg-2"></div>
				<div class="col-md-4 col-lg-4">
					<label class="control-label">Project Name</label> <select
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
						type="text" class="form-control"
						placeholder="enter the latest Release version" />
				</div>
			</div>
			<hr class="mb-md-5 mb-lg-5 col-md-8">


			<div class="row mb-md-4 mb-lg-4">
				<div class="col-md-2 col-lg-2"></div>
				<div class="col-md-4 col-lg-4">
					<label class="control-label">Closed:</label> <input type="text"
						id="closed" class="form-control"
						placeholder="enter the closed tickets number"> <span
						id="spanClosed" class="text-danger font-weight-bold"></span>
				</div>
				<div class="col-md-4 col-lg-4">
					<label class="control-label">Failed:</label> <input type="text"
						id="failed" class="form-control"
						placeholder="enter the failed tickets number"> <span
						id="spanFailed" class="text-danger font-weight-bold"></span>
				</div>

			</div>

			<div class="row mb-md-4 mb-lg-4">
				<div class="col-md-2 col-lg-2"></div>
				<div class="col-md-4 col-lg-4">
					<label class="control-label">Reopened:</label> <input type="text"
						id="reopened" class="form-control"
						placeholder="enter the reopened tickets number"> <span
						id="spanReopened" class="text-danger font-weight-bold"></span>
				</div>
				<div class="col-md-4 col-lg-4">
					<label class="control-label">Blocked:</label> <input type="text"
						id="blocked" class="form-control"
						placeholder="enter the blocked tickets number"> <span
						id="spanBlocked" class="text-danger font-weight-bold"></span>
				</div>

			</div>
			<div class="row mb-md-4 mb-lg-4">
				<div class="col-md-2 col-lg-2"></div>
				<div class="col-md-4 col-lg-4">
					<label class="control-label">Inprogress:</label>
					 <input type="text"
						id="inprogress" class="form-control"
						placeholder="enter the inprogress tickets number" onblur='numberValidation(inprogress)'/> 
						<span id="spanInprogress" class="text-danger font-weight-bold"></span>
				</div>
				<div class="col-md-4 col-lg-4">
					<label class="control-label">Review:</label> <input type="text"
						id="review" class="form-control"
						placeholder="enter the review tickets number"> <span
						id="spanReview" class="text-danger font-weight-bold"></span>
				</div>

			</div>
			<div class="row mb-md-5 mb-lg-5">
				<div class="col-md-2 col-lg-2"></div>
				<div class="col-md-8 col-lg-8">
					<label class="control-label">Additional Comments:</label>
					<textarea class="form-control" name="message" rows="2" col="10"
						placeholder="enter the required additional comments"> </textarea>
				</div>
			</div>


			<div class="text-center">
				<input id="submit" type="submit" class="btn btn-success" disabled="true" value="Submit" />
			</div>
		</div>
	</form>
</body>