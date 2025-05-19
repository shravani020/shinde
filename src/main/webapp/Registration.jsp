<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OMOS</title>

<!-- To add CSS file -->
<link rel="stylesheet" type="text/css"
	href="LoginRegistration/css/registrationPage.css">

<!-- To add Icons -->
<script src="https://kit.fontawesome.com/8d1ac6ad03.js"
	crossorigin="anonymous"></script>
</head>
<body>

	<!-- Header section -->
	<table width="100%">
		<tr>
			<td width="20%"><video autoplay muted loop src="images/omos_logo.mp4" width="60%" height="60%" id="logo"></video></td>

			<td width="50%">
				<div class="headTopic">
					<h1 id="mainHeading">OMOS</h1>
					<h3 id="slogan">&nbsp;&nbsp;Your Health, Our Priority, One
						Click Away.</h3>
				</div>
			</td>

			<td width="20%">
				<div class="AlreadyAcc">
					<a href="login.jsp">Already have an account?</a> <a
						href="login.jsp"><button class="LRB">Login</button></a>
				</div>
			</td>
		</tr>
	</table>

	<div class="Line">
		<!-- Just to Take An empty NavBar -->
	</div>

	<br>

	<h1>Register</h1>

	<!-- Registration Form Begins -->
	<fieldset>
		<form method="post" action="reg"> <!-- redirect to RegisterServlet -->
			<label for="Uname"><b>User Name</b></label> <input type="text"
				placeholder="Enter User Name" name="Uname" id="Uname" required>

			<br>
			<br> <label for="email"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="email" id="email"
				pattern="[^\s@]+@[^\s@]+\.[^\s@]+" required> <br>
			<br> <label for="Fname"><b>First Name</b></label><br> <input
				type="text" placeholder="Enter First Name" name="Fname" id="Fname"
				required> <br>
			<br> <label for="Lname"><b>Last Name</b></label> <input
				type="text" placeholder="Enter Last Name" name="Lname" id="Lname"
				required> <br>
			<br> <label for="address"><b>Address:</b></label>
			<textarea name="address" id="address" rows="4" cols="50"></textarea>

			<br>
			<br> <label for="gender"><b>Gender</b></label> <input
				type="radio" name="gender" id="gender" value="Male">Male <input
				type="radio" name="gender" id="gender" value="Female">Female

			<br>
			<br> <label for="birthdate"><b>Birthdate:</b></label> <input
				type="date" name="birthdate" id="birthdate"> <br>
			<br> <label for="phone-number"><b>Phone Number</b></label> <input
				type="tel" placeholder="0" name="phone-number" id="phone-number"
				pattern="[0-9]{10}" required> <br>
			<br> <label for="psw"><b>Password</b></label> <input
				type="password" id="psw" name="psw" class="pw"
				pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
				title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
				required><br> <br>
			<br> <label for="psw"><b>Confirm Password</b></label> <input
				type="password" id="cpsw" name="psw" class="pw"
				pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
				title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
				required><br>
			<br> <br> <input type="radio" name="pwview" id="view"
				value="view" onclick="viewPassword()"> <label for="viewe"><i
				class="fa-sharp fa-solid fa-eye"></i></label> <input type="radio"
				name="pwview" id="view" value="hide" onclick="hidePassword()">
			<label for="hide"><i class="fa-solid fa-eye-slash"></i></label> <br>
			<br>

			<div class="FormButtons">
				<input type="submit" value="Submit" id="subbtn" name="submit">
				<input type="button" value="Clear" id="clear">
			</div>

		</form>
	</fieldset>
	<!-- Registration Form Ends -->
	<br>
	<br>

	<!-- Footer Begins -->
	<footer>
		<table width="100%">
			<tr class="footTable">
				<th width="20%">Developers</th>
				<th width="20%">More Details</th>
				<th width="20%">Contact Us</th>
				<th width="20%">Location</th>
				<th width="20%">Follow Us On</th>
			</tr>

			<tr class="footTable">
				<td>
					<ul>
						<li><a href="#">Harshad</a></li>
						<li><a href="#">Siddhi</a></li>
						<li><a href="#">Shravani</a></li>
						<li><a href="#">Shudhanshu</a></li>
					</ul>
				</td>

				<td><a href="AboutUs.html">About Us</a></td>
				<td><i class="fa-solid fa-phone"></i> +0123456789<br> <br>
					<i class="fa-solid fa-envelope"></i> omos@info.lk <br> <br>
				<td><i class="fa-solid fa-location-dot"></i> Kothrud,<br>PUNE,<br>MH,<br>India</td>
				<td><a href="#"><i class="fa-brands fa-square-facebook"
						style="font-size: 30px;"></i></a> <a href="#"><i
						class="fa-brands fa-square-twitter" style="font-size: 30px;"></i></a>
					<a href="#"><i class="fa-brands fa-square-instagram"
						style="font-size: 30px;"></i></a> <a href="#"><i
						class="fa-brands fa-linkedin" style="font-size: 30px;"></i></a> <br>
					<br> <br> <br>
					<div id="Cpyright">
						<i class="fa-regular fa-copyright"></i>2023 All Rights Reserved
					</div></td>
			</tr>
		</table>
	</footer>
	<!-- Footer Ends -->

	<!-- The JavaScript File of the Page -->
	<script src="./LoginRegistration/js/registration.js"></script>
</body>
</html>
