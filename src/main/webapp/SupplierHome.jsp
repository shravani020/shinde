<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%
String username = (String) session.getAttribute("username");
if (username == null) {
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OMOS</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- To add CSS file -->
<link rel="stylesheet" type="text/css"
	href="Supplier/css/supplierHome.css">

<!-- To add Icons -->
<script src="https://kit.fontawesome.com/8d1ac6ad03.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<header>
		<div class="container">
			<div class="logo">
				<img src="images/omos_logo.png" alt="logo">
			</div>
			<div class="headTopic">
				<h1 id="mainHeading">OMOS</h1>
				<h3 id="slogan">Your Health, Our Priority, One Click Away.</h3>
			</div>
		</div>
	</header>

	<div class="Line">
		<!-- Just to Take An empty NavBar -->
	</div>

	<div class="container">
		<h1>Welcome <%=username %></h1>

		<center>
			<div class="MainBoxes">
				<form action="supp" method="post" class="MainBoxes"> <!-- redirect to SupplierServlet -->
					<button type="submit" class="btn btn-primary">My Orders</button>
				</form>

			</div>
		</center>

		<br> <br>
	</div>

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
						<li><a href="#">Sudhanshu</a></li>
						<li><a href="#">Harshad</a></li>
						<li><a href="#">Shravani</a></li>
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
</body>
</html>
