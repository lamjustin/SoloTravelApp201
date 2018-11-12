

(function() {
	

	
	  // Initialize Firebase
	  const config = {
	    apiKey: "AIzaSyCTWLctkG3RJUY1O_2crV439KG1VEUoUrk",
	    authDomain: "solo-travelapp-201.firebaseapp.com",
	    databaseURL: "https://solo-travelapp-201.firebaseio.com",
	    projectId: "solo-travelapp-201",
	    storageBucket: "solo-travelapp-201.appspot.com",
	    messagingSenderId: "110767450438"
	  };
	  firebase.initializeApp(config);
	

	 const txtEmail = document.getElementById('txtEmail');
	 const txtPassword = document.getElementById('txtPassword'); 
	 const btnSignUp = document.getElementById('btnSignUp');
	 
	 const hikingValue = document.getElementById('interestHiking');
	 const sportsValue = document.getElementById('interestSports');
	 const museumsValue = document.getElementById('interestMuseums');
	 const foodValue = document.getElementById('interestFood');
	 const nightLifeValue = document.getElementById('interestNightLife');
	 const parksValue = document.getElementById('interestParks');
	 const beachesValue = document.getElementById('interestBeaches');
	 const shoppingValue = document.getElementById('interestShopping');
	 const affordableValue = document.getElementById('interestAffordable');
	 const sightseeingValue = document.getElementById('interestSightseeing');
	 const historyValue = document.getElementById('interestHistory');
	 const adventureValue = document.getElementById('interestAdventure');
	 const luxuryValue = document.getElementById('interestLuxury');
	 
	 
	 //add signup event
	 btnSignUp.addEventListener('click', e => {
		//get email and pass
		 //TODO: Check for real email
		 const email = txtEmail.value;
		 const pass = txtPassword.value;
		 const auth = firebase.auth();
		 //sign in
		 const promise = auth.createUserWithEmailAndPassword(email, pass);
		 promise
		 	.catch(e => console.log(e.message));
		 
		 firebase.auth().onAuthStateChanged(firebaseUser => {
				if(firebaseUser){
					console.log(firebaseUser);
					console.log(firebaseUser.uid);
					var ref = firebase.database().ref().child('users/' + firebaseUser.uid);
					
					const hikingV = hikingValue.checked;
					const sportsV = sportsValue.checked;
					const museumsV = museumsValue.checked;
					const foodV = foodValue.checked;
					const nightLifeV = nightLifeValue.checked;
					const parksV = parksValue.checked;
					const beachesV = beachesValue.checked;
					const shoppingV = shoppingValue.checked;
					const affordableV = affordableValue.checked;
					const sightseeingV = sightseeingValue.checked;
					const historyV = historyValue.checked;
					const adventureV = adventureValue.checked;
					const luxuryV = luxuryValue.checked;
					
					const email1 = txtEmail.value;
					const first = txtFirstName.value;
					const last = txtLastName.value;
					const d = txtBirthDate.value;
					ref.set({
						email: email1,
						firstname: first,
						lastname: last, 
						bday: d,
					});
					var newRef = firebase.database().ref().child('users/' + firebaseUser.uid + "/interests/");
					newRef.set({
						hiking: hikingV,
						sports: sportsV,
						museums: museumsV,
						food: foodV,
						nightlife: nightLifeV,
						parks: parksV,
						beaches: beachesV,
						shopping: shoppingV,
						affordable: affordableV,
						sightseeing: sightseeingV,
						history: historyV,
						adventure: adventureV,
						luxury: luxuryV,
					});

					
				} else {
					console.log('not logged in');
				}
				 
			 });
			 
		 
		 
	 });
	 

	 
	 //Add real time listener
	 firebase.auth().onAuthStateChanged(firebaseUser => {
		if(firebaseUser){
			console.log(firebaseUser);
			console.log(firebaseUser.uid);
			
			setTimeout(function () {
			       window.location.href = "profile.jsp"; //will redirect to your blog page (an ex: blog.html)
			    }, 500); //will call the function after 2 secs.
			
			
		} else {
			console.log('not logged in');
		}
		 
	 });
	 
}());


