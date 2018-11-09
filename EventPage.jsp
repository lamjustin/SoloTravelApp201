<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Page</title>
<link rel="stylesheet" type="text/css" href="EventPage.css">

</head>

<body class = "page">

	<div class="header">
		<a href = "" class = "hme">
			<img src="home.png" style="width:120px;height:65px;">
		</a>			
		<a href = "" class = "cur">
			<img src="curr.png" style="width:350px;height:65px;">
		</a>
		<a href = "" class = "create">
			<img src="newtr.png" style="width:300px;height:65px;">
		</a>
		<a href = "logout" class = "lo">
			<img src="lo.png" style="width:150px;height:65px;">
		</a>	
	</div>
	<div id = "body">
		<div class = "picture">
			<img src="leaf.png" id="profilePicture" width="250" height="250">
			<br>
			<h1>Title of Image</h1>
			<h2>Date</h2>
			<h3>Descriptions</h3>
		</div>
		
		<div class = "Attendees">
			<table id = "users" style = "width:50%">
				<caption>Attendees</caption>					
				<tr>
					<td><img src="leaf.png" id="profilePicture" width="65" height="65"></td>
					<td>Name1
					
					</td>
				</tr>
				<tr>
					<td><img src="leaf.png" id="profilePicture" width="65" height="65"></td>
					<td>Name2
					
					</td>
				</tr>
				<tr>
					<td><img src="leaf.png" id="profilePicture" width="65" height="65"></td>
					<td>Name3
					
					
					</td>
				</tr>
				<tr>
					<td><img src="leaf.png" id="profilePicture" width="65" height="65"></td>
					<td>Name4
					
					
					</td>
				</tr>
			</table>
			
		</div>
		<div class = "interests">
		<table>
			<tr>
				<td> hashtag</td>
				<td> interest1    </td>
				<td> interest2    </td>
				<td> interest3    </td>
			</tr>
		</table>
		</div>
		<div class = "join">
			<table>
				<tr>
				
				<td> ++ </td>
				<td> Join Event? </td>
				</tr>
			</table>
		
		</div>
	</div>
		
</body>

</html>