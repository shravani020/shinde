/**
 * 
 */

// Registration Form JS

// Function to show passwords
function viewPassword() {
    var passwords = document.getElementsByClassName("pw");

    for (var i = 0; i < passwords.length; i++) {
        passwords[i].type = "text";
    }
}

// Function to hide passwords
function hidePassword() {
    var passwords = document.getElementsByClassName("pw");

    for (var i = 0; i < passwords.length; i++) {
        passwords[i].type = "password";
    }
}

// Function to check if passwords match
function checkPassword() {
    var pw = document.getElementById("psw").value;
    var cpw = document.getElementById("cpsw").value;

    if (pw == cpw) {
        alert("Success!");
    } else {
        alert("Password Mismatch!!");
    }
}

// Function to check Date of Birth
function checkDoB() {
    var dob = document.getElementById("DOB").value;
    var d = new Date(dob);
    var thisYear = new Date();
    var ageToThisYear = thisYear.getFullYear() - d.getFullYear();

    if (ageToThisYear < 18) {
        alert("You must be at least 18 years old to register.");
        subbtn.disabled = true;
    }
}



