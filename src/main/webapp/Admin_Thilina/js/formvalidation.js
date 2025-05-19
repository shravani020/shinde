/**
 * 
 */

    function validate() {
        var first_name = document.getElementsByName("first_name")[0];
        var last_name = document.getElementsByName("last_name")[0];
        var DOB = document.getElementsByName("DOB")[0];
        var mobile_no = document.getElementsByName("mobile_no")[0];
        var email = document.getElementsByName("email")[0];
        var password = document.getElementsByName("password")[0];
        var password2 = document.getElementsByName("password2")[0];
        var address = document.getElementsByName("address")[0];
        var user_name = document.getElementsByName("user_name")[0];
        
        var phoneNumber = mobile_no.value;

        // Remove red borders from all fields initially
        first_name.style.border = "";
        last_name.style.border = "";
        DOB.style.border = "";
        mobile_no.style.border = "";
        email.style.border = "";
        password.style.border = "";
        address.style.border = "";
        user_name.style.border = "";

        var isValid = true;

        // Validation for each field
        if (first_name.value.trim() == "") {
            first_name.style.border = "2px solid red";
            isValid = false;
        }
        if (last_name.value.trim() == "") {
            last_name.style.border = "2px solid red";
            isValid = false;
        }
        if (DOB.value.trim() == "") {
            DOB.style.border = "2px solid red";
            isValid = false;
        }
        if (mobile_no.value.trim() == "") {
            mobile_no.style.border = "2px solid red";
            isValid = false;
        }
        if (email.value.trim() == "") {
            email.style.border = "2px solid red";
            isValid = false;
        }
        if (password.value.trim() == "") {
            password.style.border = "2px solid red";
            isValid = false;
        }
        if (address.value.trim() == "") {
            address.style.border = "2px solid red";
            isValid = false;
        }
        if (user_name.value.trim() == "") {
            user_name.style.border = "2px solid red";
            isValid = false;
        }
        
        if (phoneNumber.length !==10) {
            alert("Please enter a valid 10-digit phone number.");
            return false;
        }
        
        if (password.value !== password2.value){
			alert("Password does not match");
			return false;
		}

        if (isValid) {
            return true; // Form is valid
        } else {
            alert("Please fill in all required fields.");
            return false;
        }
    }


        function closeForm() {
            // Close the form
             window.location.href = "Employee.jsp";
        }
