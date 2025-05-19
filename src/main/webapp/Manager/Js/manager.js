function confirmUpdate(name) {
	var confirmed = confirm('Are you sure you want to update details of ' + name + '');
	if (!confirmed) {
		return false;
	}
}


function confirmDelete() {
	var confirmed = confirm('Are you sure you want to delete this medicine?');
	if (!confirmed) {
		return false;
	}
}

function validateDate() {
	var dateInput = document.getElementByCgetElementsByClassName("exp");
	var submitButton = document.getElementById("submit");

	var dateValue = dateInput.value;
	var datePattern = /^(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}$/;

	if (datePattern.test(dateValue)) {
		submitButton.disabled = false; // Enable the submit button
	} else {
		submitButton.disabled = true; // Disable the submit button
	}
}



