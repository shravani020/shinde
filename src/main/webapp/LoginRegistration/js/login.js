/**
 * 
 */

// Login Form JS

// Function to show the password
function viewPassword() {
    var vpsw = document.getElementById("psw");

    if (vpsw.type === "password") {
        vpsw.type = "text";
    }
}

// Function to hide the password
function hidePassword() {
    var hpsw = document.getElementById("psw");

    if (hpsw.type === "text") {
        hpsw.type = "password";
    }
}
