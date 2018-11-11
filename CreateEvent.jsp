<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Create Event</title>
	<link rel="stylesheet" type="text/css" href="createtrip_createevent_style.css" />
	<script src="https://www.gstatic.com/firebasejs/5.5.7/firebase.js"></script>
</head>
<body class="page">

<div class="header">
		<a href = "homepage.jsp" class = "hme">
			<img src="navbar_images/home.png" id="hov" style="width:120px;height:65px;">
		</a>			
		<a href = "" class = "cur">
			<img src="navbar_images/curr.png" id="hov" style="width:350px;height:65px;">
		</a>
		<a href = "createtrip.jsp" class = "create">
			<img src="navbar_images/newtr.png" id="hov" style="width:300px;height:65px;">
		</a>
		<a href = "logout" class = "lo">
			<img src="navbar_images/lo.png" id="hov" style="width:150px;height:65px;">
		</a>	
</div>

<img src="special_text/createanevent.png" class="eventPNG" style="width:400px;">

<input style="display:inline;margin-left:385px;margin-top:100px;position:absolute;" 
type="text" id="eventTitle" name="eventTitle" placeholder="event title"/>

<input style="display:inline;;margin-left:385px;margin-top:165px;position:absolute;" 
type="text" id="location" name="location" placeholder="location"/> 

<input style="display:inline;margin-left:385px;margin-top:230px;position:absolute;" 
type="text" id="numOfGuests" name="numOfGuests" placeholder="how many guests?"/>

<input style="display:inline;margin-left:385px;margin-top:295px;position:absolute;"
type="date" id="date" name="date" placeholder="event date"/>

<input style="display:inline;margin-left:385px;margin-top:360px;position:absolute;" 
type="time" id="time" name="time" placeholder="time"/>

<input style="display:inline;margin-left:385px;margin-top:425px;position:absolute;"
 type="text" id="description" name="description" placeholder="description"/>

<img src="navbar_images/plus.png" style="width: 75px; display:inline;margin-left:980px;margin-top:520px;position:absolute;" id="submitEvent"/>

<input style="display:inline;margin-left:30px;margin-top:530px;position:absolute;"
 type="text" id="interestSearch" name="interestSearch" placeholder="interest tags"/><br>

<button id="addNewEvent" class="btn btn-secondary"></button>
<script src = "CreateEvent.js"></script>
</body>
</html>