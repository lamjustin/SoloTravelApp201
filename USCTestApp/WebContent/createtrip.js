

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
	 const btnLogin = document.getElementById('btnLogin');
	 const btnSignUp = document.getElementById('btnSignUp');
	 const btnLogout = document.getElementById('btnLogout');
	  

	 
	 //add signup event
	 btnCreate.addEventListener('click', e => {
		//get email and pass
		 //TODO: Check for real email
		 const c = txtCity.value;
		 const arr = txtArrivalDate.value;
		 const dep = txtDepartDate.value;
		
		 firebase.auth().onAuthStateChanged(firebaseUser => {
				if(firebaseUser){
					console.log(firebaseUser);
					console.log(firebaseUser.uid);
					var ref = firebase.database().ref().child('events/' + firebaseUser.uid);
					
					ref.push().set({
							city: c,
							arrival: arr,
							depart: dep
						});

					
				} else {
					console.log('not logged in');
				}
				 
			 });
			 
		 
		 
	 });
	 
	 //add logout event
	 btnLogout.addEventListener('click', e => {
		firebase.auth().signOut(); 
		window.location.href = "testauth.jsp";
	 });
	 
	 //Add real time listener
	 firebase.auth().onAuthStateChanged(firebaseUser => {
		if(firebaseUser){
			console.log(firebaseUser);
			console.log(firebaseUser.uid);
			
			
		} else {
			console.log('not logged in');
		}
		 
	 });
	 
}());


