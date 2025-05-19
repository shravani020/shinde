<%@page import="com.java.util.UserDBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.*"%> 
<%@page import="com.java.model.*"%> 
<%@page import="projectpackage1.DBconnection"%>
<%@page import="com.java.util.MedicineDBUtil"%>

<%

	String username = (String) session.getAttribute("username");

	User user = UserDBUtil.getUser(username);

%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="customer/includes/head.jsp"%>
	<meta charset="UTF-8">
	<title>User Profile Update</title>
    <link rel="stylesheet" type="text/css" href="customer/cusProfile.css">
</head>
<body>
	<%@include file="customer/includes/navbar.jsp"%>

	<h1>Welcome <%=username %></h1>
    <form action="cusProfileUpdServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value=<%=user.getUname() %> readonly required>
        <br><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value=<%=user.getEmail()%> required>
        <br><br>
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" value=<%=user.getFname()%> required>
        <br><br>
        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" value=<%=user.getLname()%> required>
        <br><br>
        <label for="address">Address:</label>
        <textarea rows="3" cols="20" id="address" name="address" required><%=user.getAdd()%></textarea>
        <br><br>
        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" value=<%=user.getDob()%> required>
        <br><br>
        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" value=<%=user.getPhone()%> required>
        <br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value=<%=user.getPwd()%> required>
        <br><br>
        <label for="cpassword">Confirm Password:</label>
        <input type="password" id="cpassword" name="cpassword" value=<%=user.getPwd()%> required>
        <span id="err">Password does not matched</span>
        <input type="checkbox" id="checkbox"><span class="pwdtxt">Show Password</span>
        <br><br>
        <input type="submit" value="Update Profile" id="subbtn">
    </form>
    
    
    
     <script src="customer/customer.js"></script>

</body>
</html>