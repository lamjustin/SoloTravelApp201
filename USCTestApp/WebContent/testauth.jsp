<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TESTAUTH</title>

<script src="https://www.gstatic.com/firebasejs/5.5.7/firebase.js"></script>
</head>
<body>
	<div class="container">
		<input id="txtEmail" type="email" placeholder="Email">
		<input id="txtPassword" type="password" placeholder="Password"><br/>
		<input id="txtFirstName" type="text" placeholder="First Name">
		<input id="txtLastName" type="text" placeholder="Last Name"><br/>
		<input id="txtBirthMonth" type="text" placeholder="Month">
		<input id="txtBirthDay" type="text" placeholder="Day">
		<input id="txtBirthYear" type="text" placeholder="Year"><br/>
		<button id="btnLogin" class="btn btn-action">Log in</button>
		<button id="btnSignUp" class="btn btn-secondary">Sign Up</button>
		<button id="btnLogout" class="btn btn-action hide">Log Out</button>
	</div>
	
	<script src="app.js"></script>

</body>
</html>