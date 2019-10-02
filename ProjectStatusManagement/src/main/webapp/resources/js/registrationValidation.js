function validation() {

	var username = document.getElementById('username').value;
	var firstname = document.getElementById('firstname').value;
	var lastname = document.getElementById('lastname').value;
	var age = document.getElementById('age').value;
	var password = document.getElementById('password').value;
	var conPassword = document.getElementById('conPassword').value;

	if (username == "") {
		document.getElementById('spanUsername').innerHTML = " * Please fill the username *";
		return false;
		}

	if (firstname == "") {
		document.getElementById('spanFirstname').innerHTML = " * Please fill the firstname *";
		return false;
		}

	if (lastname == "") {
		document.getElementById('spanLastname').innerHTML = " * Please fill the lastname *";
		return false;
		}
	
	if (age == "") {
		document.getElementById('spanAge').innerHTML = " * Please fill the age *";
		return false;
		}
	
	if (password == "") {
		document.getElementById('spanPassword').innerHTML = " * Please fill the password *";
		return false;
		}
	
	if (conPassword == "") {
		document.getElementById('spanConPassword').innerHTML = " * Please fill the confirm password *";
		return false;
		}
}