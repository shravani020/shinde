<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
    <title>Payment Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        
        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        label {
            display: block;
            font-weight: bold;
            margin-top: 10px;
        }
        
        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        
        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        
        .error-message {
            color: red;
        }
    </style>
    <script>
        function validateDate(dateInput) {
            // Define a regular expression to match the date format (YYYY-MM-DD)
            var datePattern = /^\d{4}-\d{2}-\d{2}$/;

            if (!datePattern.test(dateInput)) {
                var errorMessage = document.getElementById("errorMessage");
                errorMessage.textContent = "Invalid date format. Please use YYYY-MM-DD.";
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <form action="PaymentServlet" method="post" onsubmit="return validateDate(document.getElementById('paymentDate').value);">
        <label for="paymentMethod">Payment Method:</label>
        <select name="paymentMethod">
            <option value="Credit Card">Credit Card</option>
            <option value="PayPal">PayPal</option>
            <option value="Other">Other</option>
        </select>

        <label for="amount">Amount:</label>
        <input type="text" name="amount">

        <label for="cardNo">Card Number:</label>
        <input type="text" id="cardNo" name="cardNo">

        <label for="paymentDate">Payment Date (YYYY-MM-DD):</label>
        <input type="text" id="paymentDate" name="paymentDate">
        <div class="error-message" id="errorMessage"></div>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
