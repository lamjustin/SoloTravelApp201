<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a Trip!</title>
<script src="https://www.gstatic.com/firebasejs/5.5.7/firebase.js"></script>
</head>
<body>
	<div class="container">
		<input id="txtCity" type="text" placeholder="City">
		<input id="txtArrivalDate" type="text" placeholder="Arrival"><br/>
		<input id="txtDepartDate" type="text" placeholder="Depart">
		
		<button id="btnCreate" class="btn-Create">Create</button>
		<button id="btnLogout" class="btn btn-action hide">Log Out</button>
		
	</div>
	<script src="createtrip.js"></script>
</body>
</html>