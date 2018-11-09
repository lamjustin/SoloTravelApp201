

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
	  
	  // add Login Event
	 btnLogin.addEventListener('click', e => {
		 //get email and pass
		 const email = txtEmail.value;
		 const pass = txtPassword.value;
		 const auth = firebase.auth();
		 //sign in
		 const promise = auth.signInWithEmailAndPassword(email, pass);
		 promise.catch(e => console.log(e.message));	
		 
		 
		 
	 });
	 
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
					const email1 = txtEmail.value;
					const first = txtFirstName.value;
					const last = txtLastName.value;
					const m = txtBirthMonth.value;
					const d = txtBirthDay.value;
					const y = txtBirthYear.value;
					ref.set({
							email: email1,
							firstname: first,
							lastname: last, 
							bmonth: m,
							bday: d,
							byear: y
						});

					
				} else {
					console.log('not logged in');
				}
				 
			 });
			 
		 
		 
	 });
	 
	 //add logout event
	 btnLogout.addEventListener('click', e => {
		firebase.auth().signOut(); 
		//window.location.href = "testauth.jsp";
	 });
	 
	 //Add real time listener
	 firebase.auth().onAuthStateChanged(firebaseUser => {
		if(firebaseUser){
			console.log(firebaseUser);
			console.log(firebaseUser.uid);
			
			setTimeout(function () {
			       window.location.href = "profile.jsp"; //will redirect to your blog page (an ex: blog.html)
			    }, 2000); //will call the function after 2 secs.
			
			
		} else {
			console.log('not logged in');
		}
		 
	 });
	 
}());


