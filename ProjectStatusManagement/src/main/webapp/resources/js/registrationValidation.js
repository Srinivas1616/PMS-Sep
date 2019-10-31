$(document).ready(function() {
	$('#username').keypress(function() {
		$('#username').removeAttr("style");
		$('#spanUsername').html("");
	});

	$('#firstname').keypress(function() {
		$('#firstname').removeAttr("style");
		$('#spanFirstname').html("");
	});

	$('#lastname').keypress(function() {
		$('#lastname').removeAttr("style");
		$('#spanLastname').html("");
	});

	$('#age').keypress(function() {
		$('#age').removeAttr("style");
		$('#spanAge').html("");
	});

	$('#password').keypress(function() {
		$('#password').removeAttr("style");
		$('#spanPassword').html("");
	});

	$('#conPassword').keypress(function() {
		$('#conPassword').removeAttr("style");
		$('#spanConPassword').html("");
	});
});

function validation() {

	var username = document.getElementById('username').value;
	var firstname = document.getElementById('firstname').value;
	var lastname = document.getElementById('lastname').value;
	var age = document.getElementById('age').value;
	var password = document.getElementById('password').value;
	var conPassword = document.getElementById('conPassword').value;
	var count = 0;
	var regAge = /^([1-9][0-9]?){0,1}$/;
	
	// Empty fields validation

	if ($('#username').val() == '') {
		$('#username').css('border-color', 'red');
		$('#spanUsername').show();
		document.getElementById('spanUsername').innerHTML = " * Please fill the username *";
		count++;
	}

	if ($('#firstname').val() == '') {
		$('#firstname').css('border-color', 'red');
		$('#spanFirstname').show();
		document.getElementById('spanFirstname').innerHTML = " * Please fill the firstname *";
		count++;
	}

	if ($('#lastname').val() == '') {
		$('#lastname').css('border-color', 'red');
		$('#spanLastname').show();
		document.getElementById('spanLastname').innerHTML = " * Please fill the lastname *";
		count++;
	}

	if ($('#age').val() == '') {
		$('#age').css('border-color', 'red');
		$('#spanAge').show();
		document.getElementById('spanAge').innerHTML = " * Please fill the age *";
		count++;
	}

	if ($('#password').val() == '') {
		$('#password').css('border-color', 'red');
		$('#spanPassword').show();
		document.getElementById('spanPassword').innerHTML = " * Please fill the password *";
		count++;
	}

	if ($('#conPassword').val() == '') {
		$('#conPassword').css('border-color', 'red');
		$('#spanConPassword').show();
		document.getElementById('spanConPassword').innerHTML = " * Please fill the confirm password *";
		count++;
	}
	
//isNaN validation
	
	if ((username.length>0) && (!isNaN(username))) {
		$('#username').css('border-color', 'red');
		$('#spanUsername').show();
		document.getElementById('spanUsername').innerHTML = " * Digits not allowed	*";
		count++;
	}
	
	if ((firstname.length>0) && (!isNaN(username))) {
		$('#username').css('border-color', 'red');
		$('#spanUsername').show();
		document.getElementById('spanUsername').innerHTML = " * Digits not allowed	*";
		count++;
	}
	
	//Content Validation

	if ((username.length>0)&&((username.length <= 2) || (username.length > 20))) {
		$('#username').css('border-color', 'red');
		$('#spanUsername').show();
		document.getElementById('spanUsername').innerHTML = " * Username length must be between 3 to 20 characters	*";
		count++;
	}
			
	if ((firstname.length>0)&&((firstname.length <= 2) || (firstname.length > 80))) {
		$('#firstname').css('border-color', 'red');
		$('#spanFirstname').show();
		document.getElementById('spanFirstname').innerHTML = " * Firstname length must be between 3 to 20 characters	*";
		count++;
	}
	
	if ((lastname.length>0) && ((lastname.length <= 2) || (lastname.length > 80))) {
		$('#lastname').css('border-color', 'red');
		$('#spanLastname').show();
		document.getElementById('spanLastname').innerHTML = " * Lastname length must be between 3 to 20 characters	*";
		count++;
	}
	
	if ((lastname.length>0) && ((lastname.length <= 2) || (lastname.length > 80))) {
		$('#lastname').css('border-color', 'red');
		$('#spanLastname').show();
		document.getElementById('spanLastname').innerHTML = " * Lastname length must be between 3 to 20 characters	*";
		count++;
	}
	
	if(!age.match(regAge)){
		$('#age').css('border-color', 'red');
		$('#spanAge').show();
		document.getElementById('spanAge').innerHTML = " * Invalid age	*";
		count++;
	}
	
	if((password.length > 0) && (password.length < 8)){
		$('#password').css('border-color', 'red');
		$('#spanPassword').show();
		document.getElementById('spanPassword').innerHTML = "* Password is weak	*";
		count++;
	}
	
	
	if(password != conPassword){
		$('#conpassword').css('border-color', 'red');
		$('#spanConPassword').show();
		document.getElementById('spanConPassword').innerHTML = "* Password is mismatching *";
		count++;
	}
	/*if(age != regAge){
		$('#age').css('border-color', 'red');
		$('#spanAge').show();
		document.getElementById('spanAge').innerHTML = " * Characters not allowed *";
		count++;
	}*/
	
	if (count > 0) {
		return false;
	}

	// field content validation

}