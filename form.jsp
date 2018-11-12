<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Create New Account</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="create_account_style.css" />
		<script src="https://www.gstatic.com/firebasejs/5.5.7/firebase.js"></script>
	</head>
<body>

		<img src="special_text/createacct.png" id="title">
		
		<p class = "1" id="basicinfo">basic info</p>
	
		<div class="mdl-card__supporting-text mdl-color-text--grey-600" id="fillins">
	          
			<input id="txtEmail" type="email" style="width:275px;" placeholder=" email"><br><br/>
			<input id="txtPassword" type="password" style="width:275px;" placeholder=" password"><br><br/>
			<input id="txtFirstName" type="text" style="width:275px;" placeholder=" first name"><br><br/>
			<input id="txtLastName" type="text" style="width:275px;" placeholder=" last name"> <br>
			<input id = "txtBirthDate" type = "date" style="width:275px;"> 
			
			<button id="btnSignUp" class="btn btn-secondary"><img src="special_text/letsgo.png" id="title"></button>
		    
		    
	    </div> 
	 
		<div id = "userInterests"> 
			<!-- Interests  -->
		    <br>
		    <input type="checkbox" name="interestHiking" id = "interestHiking" value="Hiking"> Hiking<br>
   			<input type="checkbox" name="interestSports" id = "interestSports" value="Sports"> Sports<br>
   			<input type="checkbox" name="interestMuseums" id = "interestMuseums" value="Museums"> Museums<br>
   			<input type="checkbox" name="interestFood" id = "interestFood" value="Food"> Food<br>
   			
   			<input type="checkbox" name="interestNightLife" id = "interestNightLife" value="NightLife"> Night Life<br>
  			<input type="checkbox" name="interestParks" id = "interestParks" value="Parks"> Parks<br>
  			<input type="checkbox" name="interestBeaches" id = "interestBeaches" value="Beaches"> Beaches<br>		
  			<input type="checkbox" name="interestShopping" id ="interestShopping" value="Shopping"> Shopping<br>
  			
  			<input type="checkbox" name="interestAffordable" id = "interestAffordable" value="Affordable"> Affordable<br>
  			<input type="checkbox" name="interestSightseeing" id = "interestSightseeing" value="Sightseeing"> Sightseeing<br>
  			<input type="checkbox" name="interestHistory" id = "interestHistory" value="History"> History<br>
  			<input type="checkbox" name="interestAdventure" id = "interestAdventure" value="Adventure"> Adventure<br>
  			<input type="checkbox" name="interestLuxury" id = "interestLuxury" value="Luxury"> Luxury<br>
  			<br>
		</div>
	
	
		<script src="form.js"></script>
</body>
</html>