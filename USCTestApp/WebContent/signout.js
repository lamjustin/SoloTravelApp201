
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

	 const btnLogout = document.getElementById('btnLogout');
	 
	 
	//add create trip event
	 btnCreateTrip.addEventListener('click', e => {
		window.location.href = "createtrip.jsp";
		//window.location.href = "testauth.jsp";
	 });
	 
	 //add logout event
	 btnLogout.addEventListener('click', e => {
		firebase.auth().signOut(); 
		window.location.href = "testauth.jsp";
		//window.location.href = "testauth.jsp";
	 });
	 
	 //Add real time listener
	 firebase.auth().onAuthStateChanged(firebaseUser => {
		if(firebaseUser){
			console.log(firebaseUser);
			console.log(firebaseUser.uid);
			const userID = firebaseUser.uid;
			document.getElementById('user').value = userID;
			
			var valueRef = firebase.database().ref('users/' + userID);
			firebase.database().ref('users/' + userID).on('value', function(snapshot) {
			    var firstname = snapshot.val().firstname;
			    var lastname = snapshot.val().lastname;
			    var email = snapshot.val().email;
			    document.getElementById('fname').value = firstname;
			    document.getElementById('lname').value = lastname;
			    document.getElementById('email').value = email;
			});
		

			
		} else {
			console.log('not logged in');
		}
		 
	 });
	 
}());