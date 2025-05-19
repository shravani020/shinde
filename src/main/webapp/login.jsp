<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OMOS</title>

<!-- To add CSS file -->
<link rel="stylesheet" type="text/css"
	href="LoginRegistration/css/loginPage.css">

<!-- To add Icons -->
<script src="https://kit.fontawesome.com/8d1ac6ad03.js"
	crossorigin="anonymous"></script>
</head>
<body>

	<!-- Header section -->
	<table width="100%">
		<tr>

			<td width="20%"><video autoplay muted loop
					src="images/omos_logo.mp4" width="60%" height="60%" id="logo"></video></td>

			<td width="50%">
				<div class="headTopic">
					<h1 id="mainHeading">OMOS</h1>
					<h3 id="slogan">&nbsp;&nbsp;Your Health, Our Priority, One
						Click Away.</h3>
				</div>
			</td>

			<td width="20%">
				<div class="AlreadyAcc">
					<a href="Registration.jsp">Does not have an account?</a> <a
						href="Registration.jsp">
						<button class="RRB"
							style="background-color: #007bff; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px;">Register</button>
					</a>
				</div>
			</td>
		</tr>
	</table>

	<div class="Line">
		<!-- Just to Take An empty NavBar -->
	</div>

	<br>

	<h1>Login</h1>

	<!-- Login form -->
	<div id="LForm">
		<fieldset>
			<form method="POST" action="log">
				<!-- this will redirect to the  LoginServlet-->
				<label for="userType">User Type:</label> <select name="userType">
					<option value="admin">Admin</option>
					<option value="customer">Customer</option>
					<option value="supplier">Supplier</option>
					<option value="manager">Manager</option>
				</select> <br> <br> <label for="Uname"><b>User Name</b></label> <input
					type="text" placeholder="Enter User Name" name="Uname" id="Uname">

				<br> <br> <label for="psw"><b>Password</b></label> <input
					type="password" placeholder="*********" id="psw" name="psw">

				<input type="radio" name="pwview" id="view" value="view"
					onclick="viewPassword()"> <label for="viewe"><i
					class="fa-sharp fa-solid fa-eye"></i></label> <input type="radio"
					name="pwview" id="view" value="hide" onclick="hidePassword()">
				<label for="hide"><i class="fa-solid fa-eye-slash"></i></label> <br>
				<br>

				<div class="FormButtons">
					<input type="submit" name="login" value="Login" id="login"
						style="background-color: #007bff; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px;">
					<a href="login.jsp"><input type="button" value="Cancel"
						id="cancel"
						style="background-color: #f00; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px;"></a>

				</div>
			</form>
		</fieldset>
	</div>

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
						<li><a href="#">Shravani</a></li>
						<li><a href="#">Shudhanshu</a></li>
						<li><a href="#">Siddhi</a></li>
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
	<script src="./LoginRegistration/js/login.js"></script>

</body>
</html>
