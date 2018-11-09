<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	
</head>
<body>


		
		<h1>create your account!</h1>
	
		<div class="mdl-card__supporting-text mdl-color-text--grey-600">
	          <p class = "1">Basic Info</p>
		<input class="email__input" style="display:inline;width:auto;" type="text" id="email" name="email" />
				<br/><br/>
		<input class="username__input" style="display:inline;width:auto;" type="text" id="username" name="username" placeholder="Userame" />
	          <br/><br/>
		<input class="firstname__input" style="display:inline;width:auto;" type="text" id="fname" name="fname" placeholder="First Name"/>
	          <br/><br/>
	    <input class="lastname__input" style="display:inline;width:auto;" type="text" id="lname" name="lname" placeholder="Last Name" />
	          <br/><br/>
	    <input class="bdaymonth__input" style="display:inline;width:auto;" type="text" id="bmonth" name="bmonth" placeholder="Birth Month" />
	          &nbsp;&nbsp;&nbsp;
	    <input class="bdaydate__input" style="display:inline;width:auto;" type="text" id="bdate" name="bdate" placeholder="Date">
	          &nbsp;&nbsp;&nbsp;
	    <input class="bdayyr__input" style="display:inline;width:auto;" type="text" id="byr" name="byr" placeholder="Year"/>
	          &nbsp;&nbsp;&nbsp;
		<button id="save_button">SAVE</button>
	          
	     </div>
	
	
	
		<script src="https://www.gstatic.com/firebasejs/5.5.7/firebase.js"></script>
		<script>
		
		// Initialize Firebase
		  var config = {
		    apiKey: "AIzaSyCH9yOaKN4wAkNvmN9JJ925RnJS3wV_RQ8",
		    authDomain: "usctestapp.firebaseapp.com",
		    databaseURL: "https://usctestapp.firebaseio.com",
		    projectId: "usctestapp",
		    storageBucket: "usctestapp.appspot.com",
		    messagingSenderId: "44970144703"
		  };
		  firebase.initializeApp(config);
		
		  
		  
		  $('#save_button').click(function(){
			  var rootRef = firebase.database().ref().child('users').child($('#email').val());
			  rootRef.set ({
				  		 username:$('#username').val(),
						 fname:$('#fname').val(),
						 lname:$('#lname').val(),
						 bmonth:$('#bmonth').val(),
						 bdate:$('#bdate').val(),
						 byear:$('#byr').val()
					 
				  });
		  });
		</script>
</body>
</html>