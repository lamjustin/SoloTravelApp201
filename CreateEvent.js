
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
	  
	  const eventTitle = document.getElementById('eventTitle');
	  const city = document.getElementById('location');
	  const maxGuests = document.getElementById('numOfGuests');
	  const eventDate = document.getElementById('date');
	  const eventTime = document.getElementById('time');
	  
	//add signup event
		 addNewEvent.addEventListener('click', e => {
			//get email and pass
			 //TODO: Check for real email
			 const title1 = eventTitle.value;
			 const cityVal = city.value;
			 const maxGuestAmount = maxGuests.value;
			 const date = eventDate.value;
			 const time = eventTime.value;
			 
			 firebase.auth().onAuthStateChanged(firebaseUser => {
					if(firebaseUser){
						console.log(firebaseUser);
						console.log(firebaseUser.uid);
						var ref = firebase.database().ref().child('events/' + firebaseUser.uid);
						console.log(firebaseUser.uid);
						ref.push().set({
								title: title1,
								city: cityVal,
								maximumGuests: maxGuestAmount,
								dateTime: date,
								startTime: time,
							});
						setTimeout(function () {
						       window.location.href = "event.jsp"; //will redirect to your blog page (an ex: blog.html)
						    }, 500); //will call the function after 2 secs.
						
					} else {
						console.log('not logged in');
					}
					 
				 });
				 
			 
			 
		 });
		 
//		 //add logout event
//		 btnLogout.addEventListener('click', e => {
//			firebase.auth().signOut(); 
//			window.location.href = "signin.jsp";
//		 });
		 
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