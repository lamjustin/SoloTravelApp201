<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trip Page</title>
<link rel="stylesheet" type="text/css" href="TripPage.css">

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
		<div id = "TopHalf">
			<div class = "MyCalender">
				<table id = "calender" style = "width:20%">
				<caption>My Calender</caption>					
					<tr>
						<td>11/21</td>
						<td>Event 1</td>
					</tr>
					<tr>
						<td>11/24</td>
						<td>Event 2</td>
					</tr>
					<tr>
						<td>11/25</td>
						<td>Event 3</td>
					</tr>
				</table>
			</div>
			<div id = "profile">
				<img src="leaf.png" id="profilePicture" width="160" height="160">
				<h1>My Name </h1>			
				<div id = "locationText">Trip Location</div>
			</div>
		</div>
		<div class = "bottomHalf">
			<div class = "MyMatches">
				<table id = "matches" style = "width:100%">
					<caption>Matches</caption>					
					<tr>
						<td><img src="leaf.png" id="profilePicture" width="50" height="50"></td>
						<td>Name1
						
						</td>
					</tr>
					<tr>
						<td><img src="leaf.png" id="profilePicture" width="50" height="50"></td>
						<td>Name2
						
						</td>
					</tr>
					<tr>
						<td><img src="leaf.png" id="profilePicture" width="50" height="50"></td>
						<td>Name3
						
						
						</td>
					</tr>
				</table>
			
			</div>
			<div class = "Right">
				<div class = "Plan">
				<table id = "PlanEvent">
				<caption>Plan A Popular Event</caption>
					<tr>
						<td> 
						Event 1
						</td>
						<td> 
						Event 2
						</td>
						<td> 
						Event 3
						</td>
						<td> 
						Event 4
						</td>		
					</tr>
				</table>
				</div>
				<br>
				<br>
				<br>
				<div class = "EventMatches">
					<table id = "matchEvent">
				<caption>Join one of your matches events</caption>
					<tr>
						<td> 
						Event 1
						</td>
						<td> 
						Event 2
						</td>
						<td> 
						Event 3
						</td>
						<td> 
						Event 4
						</td>		
					</tr>
				</table>
				</div>
			
			</div>
			
		
		
		</div>
		
	</div>
		
</body>

</html>