<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Acct</title>

	<script>
	  // Initialize Firebase
	  var config = {
	    apiKey: "AIzaSyCTWLctkG3RJUY1O_2crV439KG1VEUoUrk",
	    authDomain: "solo-travelapp-201.firebaseapp.com",
	    databaseURL: "https://solo-travelapp-201.firebaseio.com",
	    projectId: "solo-travelapp-201",
	    storageBucket: "",
	    messagingSenderId: "110767450438"
	  };
	  firebase.initializeApp(config);
	</script>


</head>
<body>

	<h1>create your account!</h1>
	
	<div class="mdl-card__supporting-text mdl-color-text--grey-600">
          <p class = "1">Basic Info</p>
	
	<input class="firstname__input" style="display:inline;width:auto;" type="text" id="fname" name="fname" placeholder="First Name"/>
          <br/><br/>
      <input class="lastname__input" style="display:inline;width:auto;" type="password" id="lname" name="lname" placeholder="Last Name"/>
          <br/><br/>
    <input class="bdaymonth__input" style="display:inline;width:auto;" type="text" id="bmonth" name="bmonth" placeholder="Birth Month"/>
          &nbsp;&nbsp;&nbsp;
    <input class="bdaydate__input" style="display:inline;width:auto;" type="text" id="bdate" name="bdate" placeholder="Date"/>
          &nbsp;&nbsp;&nbsp;
    <input class="bdayyr__input" style="display:inline;width:auto;" type="text" id="byr" name="byr" placeholder="Year"/>
          &nbsp;&nbsp;&nbsp;

     </div>
     
     <div class = interests>
     <h2>Interests</h2>
     	<p class = "2">Please choose up to 5 interests to help us match you with other travelers:</p>
     	<form>
     		<input type="checkbox" name="interestHiking" value="Hiking"> Hiking<br>
  			<input type="checkbox" name="interestSports" value="Sports"> Sports<br>
  			<input type="checkbox" name="interestConcerts" value="Concerts"> Concerts<br>
  			<input type="checkbox" name="interestMuseums" value="Museums"> Museums<br><br>
  			
  			<input type="checkbox" name="interestFood" value="Food"> Food<br>
  			<input type="checkbox" name="interestBars" value="Bars"> Bars and Clubs<br>
  			<input type="checkbox" name="interestParks" value="Parks"> Parks<br>
  			<input type="checkbox" name="interestBeaches" value="Beaches"> Beaches<br><br>
  			
  			<input type="submit" value="Submit">
     	</form>
     </div>




</body>
</html>