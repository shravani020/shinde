<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>

    <!-- insert g-icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- insert css -->
    <link rel="stylesheet" href="./Admin_Thilina/css/style.css">
    
    <!---------------------- insert Javscript here ----------------------->
    <script src="./Admin_Thilina/js/formvalidation.js"></script>

 <% 
 
 	String username = (String) session.getAttribute("username");
 
 	if (username == null) {
	    response.sendRedirect("login.jsp");
	}
 
 %>
 
 
</head>
<body>

<h2>Delete Employee</h2>

<!---------------------------------------- SIDEBAR BEGINING ------------------------------------------>
    <%@ include file="Sidebar.jsp" %>
<!------------------------------------------- SIDEBAR END ------------------------------------------>

<%  String id = request.getParameter("id");
	String username1 = request.getParameter("username");
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String job = request.getParameter("job");
%>

<form action="deleteform" method="post" class="userform">

    <div class="field">

        <span class="title">Sure You want delete this employee?</span>

            <p class="input-field-address">
                <label for="">Emp ID:</label>
                <input type="text" name="em_id" value="<%=id%>" maxlength="50" readonly>
            </p>
            
            <p class="input-field-address">
                <label for="">User Name:</label>
                <input type="text" name="user_name" value="<%=username1%>" maxlength="8" readonly>
            </p>
            
            <p class="input-field-address">
                <label for="">Name:</label>
                <input type="text" name="first_name" value="<%=fname + " " +lname%>" maxlength="50" readonly>
            </p>
            
            <p class="input-field-address">
                <label for="">Job title:</label>
                <input type="text" name="title" value="<%=job%>" maxlength="100" readonly>
            </p>
            
            <div class="buttons">
                <button type="submit" name="submit" class="submitbtn">
                    <span class="btn-text">Delete Details</span>
                    <span class="material-symbols-rounded">arrow_outward</span>
                </button>

                <button type="button" onclick="closeForm()" class="cancel">
                    <span class="btn-text">Cancel</span>
                    <span class="material-symbols-rounded">close</span>
                </button>
            </div>
  	</div>
</form>

</body>
</html>