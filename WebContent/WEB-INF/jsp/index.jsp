<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>

<script src="http://code.jquery.com/jquery-2.1.1.js"></script>

<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">

<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>

<script type="text/javascript"
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script
	src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>

<script>
	$(document).ready(function() {
		$('#myTable').dataTable();
	});
</script>

</head>
<body>
	<header> </header>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Service Registry</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<button type="button" class="btn btn-info pull-right"
			data-toggle="modal" data-target="#myModalEdit">
			<span class="glyphicon glyphicon-plus"></span> Add Service
		</button>
	</div>
	<br>
	<!-- Modal View -->
	<div class="modal" id="myModalView">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Service Details</h4>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="inputName">Service Name</label> <input type="text"
								class="form-control" id="inputName" disabled>
						</div>
						<div class="form-group">
							<label for="inputName">End Point</label> <input type="text"
								class="form-control" id="inputName" disabled>
						</div>
						<div class="form-group">
							<label for="inputName">Version Number</label> <input type="text"
								class="form-control" id="inputName" disabled>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal Edit -->
	<div class="modal" id="myModalEdit">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Service Details</h4>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="inputName">Service Name</label> <input type="text"
								class="form-control" id="inputName">
						</div>
						<div class="form-group">
							<label for="inputName">End Point</label> <input type="text"
								class="form-control" id="inputName">
						</div>
						<div class="form-group">
							<label for="inputName">Version Number</label> <input type="text"
								class="form-control" id="inputName">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default">Save</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="table-responsive">
			<table id="myTable" class="display table">
				<thead>
					<tr>
						<th>Service Id</th>
						<th>Service Name</th>
						<th>Last Updated</th>
						<th>Action</th>
					</tr>


				</thead>
				<tbody>
					<tr>
						<c:forEach var="serviceRegistryBO" items="${serviceListPage}">
							<tr>
								<td>${serviceRegistryBO.serviceId}</td>
								<td>${serviceRegistryBO.serviceName}</td>
								<td>${serviceRegistryBO.modifiedTime}</td>
								<td><button type="button" class="btn btn-info"
										data-toggle="modal" data-target="#myModalView">
										<span class="glyphicon glyphicon-eye-open"></span><a
											href="/ServiceRegistry/view?id=${serviceRegistryBO.serviceId}">View</a>
									</button>
									<button type="button" class="btn btn-info" data-toggle="modal"
										data-target="#myModalEdit">
										<span class="glyphicon glyphicon-pencil"></span> Edit
									</button></td>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

</body>
<footer class="navbar">
	<div class="container">
		<p class="text-muted">Copyright@Company2017</p>
	</div>
</footer>
</html>