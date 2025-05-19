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


<!-- session create -->
 <% 
 
 	String username = (String) session.getAttribute("username");
 
 	if (username == null) {
	    response.sendRedirect("login.jsp");
	}
 
 %>


</head>
<body>

<!---------------------------------------- SIDEBAR BEGINING ------------------------------------------>
    <%@ include file="Sidebar.jsp" %>
<!------------------------------------------- SIDEBAR END ------------------------------------------>

	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String add = request.getParameter("add");
		
		String username1 = request.getParameter("username");
		String job = request.getParameter("job");
		String join = request.getParameter("join");
		String insure = request.getParameter("insure");
		String zone = request.getParameter("zone");
	%>

<form onsubmit="return validate()" action="updatetform" method="post" class="userform">

    <div class="field">

        <span class="title">Personal Details</span>

        <input type="hidden" name="em_id" value="<%=id%>">

            <p class="input-field-address">
                <label for="">First Name:</label>
                <input type="text" name="first_name" value="<%=fname%>" maxlength="50">
            </p>

            <p class="input-field-address">
                <label for="">Last Name:</label>
                <input type="text" name="last_name" value="<%=lname%>" maxlength="100">
            </p>

            <p class="input-field">
                <label for="">birthday:</label>
                <input type="date" name="DOB" value="<%=dob%>" >
            </p>

            <p class="input-field">
                <label for="">mobile_no:</label>
                <input type="text" name="mobile_no" value="<%=phone%>"maxlength="10">
            </p>

             <p class="input-field">
                <label for="">gender:</label>
                <input type="text" name="gender" value="<%=gender%>" maxlength="10">
            </p>

            <p class="input-field-address">
                <label for="">Email Address:</label>
                <input type="text" name="email" value="<%=email%>" maxlength="100">
            </p>

            <p class="input-field-address">
                <label for="">New Password:</label>
                <input type="password" name="password" value="<%=password%>" maxlength="40">
            </p>

            <p class="input-field-address">
                <label for="">Address:</label>
                <input type="text" name="address" value="<%=add%>" maxlength="200">
            </p>
            
            <p class="input-field-address">
                <label for="">Re Enter Password:</label>
                <input type="password" name="password2" maxlength="40">
            </p>

        <span class="title">Working Details</span>
        
        	<p class="input-field-address">
                <label for="">User Name:</label>
                <input type="text" name="user_name" value="<%=username1%>" maxlength="8">
            </p>

            <p class="input-field-address">
                <label for="">Job title:</label>
                <input type="text" name="title" value="<%=job%>" maxlength="100" >
            </p>

            <p class="input-field-address">
                <label for="">Join_date:</label>
                <input type="date" name="join_date" value="<%=join%>">
            </p>

            <p class="input-field-address">
                <label for="">Insure:</label>
                <input type="text" name="insure" value="<%=insure%>" maxlength="100" >
            </p>

            <p class="input-field-address">
                <label for="">Working Zone:</label>
                <input type="text" name="zone" value="<%=zone%>" maxlength="20" >
            </p> 


            <div class="buttons">
                <button type="submit" name="submit" class="submitbtn">
                    <span class="btn-text">Update Details</span>
                    <span class="material-symbols-rounded">arrow_outward</span>
                </button>

                <button type="button" onclick="closeForm()" class="cancel">
                    <span class="btn-text">Cancel</span>
                    <span class="material-symbols-rounded">close</span>
                </button>
            </div>

            



        </form>

    </div>  <!--inside form field class closing tag-->
        
</div>	<!--popup closing tag-->

</body>
</html>