<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIGNEDIN</title>
<script src="https://www.gstatic.com/firebasejs/5.5.7/firebase.js"></script>
</head>
<body>
	
	
	<h1>
      Hello User:
    </h1>
    <input type="text" name="user" id="user" style="width: 350px;" class="input"/><br/>
    <input type="text" name="fname" id="fname" style="width: 350px;" class="input"/><br/>
    <input type="text" name="lname" id="lname" style="width: 350px;" class="input"/><br/>
    <input type="text" name="email" id="email" style="width: 350px;" class="input"/><br/>
    
    
    <button id="btnCreateTrip" class="btn-createTrip">Create a Trip</button>
    <button id="btnLogout" class="btn btn-action hide">Log Out</button>

	<script src="signout.js"></script>
    
</body>
</html>