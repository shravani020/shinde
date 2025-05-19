<%@page import="com.java.util.EmpDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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


</head>
<body>

    <%@ page import="com.java.model.Employee" %>
	<%@ page import="java.util.List" %>
	

	<%
		List<Employee> empDetails = EmpDBUtil.getEmpDetails();
		request.setAttribute("empDetails", empDetails);
	%>

<!---------------------------------------- SIDEBAR BEGINING ------------------------------------------>
    <%@ include file="Sidebar.jsp" %>
<!------------------------------------------- SIDEBAR END ------------------------------------------>

<div class="main-content-employee">

    <!-- greetings -->
    <div class="greetings">
        <h1>Employee</h1>
    </div>
    <!-- greetings end -->

    <!--table begin-->
    <div class="table-outer">
        <div class="tablewrap-employee">
        <table class="emp">
                <thead>
			        <tr>
			            <th>Employee Id</th>
			            <th>Employee Name</th>
			            <th>Job Title</th>
			            <th>Zone</th>
			            <th>Joining Date</th>
			            <th>Mobile No.</th>
			            <th> Update </th>
			            <th> Delete </th>
			            <th></th>
			        </tr>
                 </thead>
                 <tbody>
                 
                 	<c:forEach var="emp" items="${empDetails}">
                    <c:set var="empid" value="${emp.id}" />
                    <c:set var="empfname" value="${emp.fanme}" />
                    <c:set var="empjob" value="${emp.job}" />
                    <c:set var="empzone" value="${emp.zone}" />
                    <c:set var="empjoin" value="${emp.join}"/>
                    <c:set var="empphone" value="${emp.phone}" />
                    
                    <c:set var="emplname" value="${emp.lname}"/>
                    <c:set var="empdob" value="${emp.dob}"/>
                    <c:set var="empgender" value="${emp.gender}"/>
                    <c:set var="empemail" value="${emp.email}"/>
                    <c:set var="emppwd" value="${emp.pwd}"/>
                    <c:set var="empadd" value="${emp.add}"/>
                    <c:set var="empinsure" value="${emp.insure}"/>
                    <c:set var="empusername" value="${emp.username}"/>
                    

                    <tr>
                        <td>${emp.id}</td>
                     	<td>${emp.fanme}</td>
                     	<td>${emp.job}</td>
                     	<td>${emp.zone}</td>
                     	<td>${emp.join}</td>
                     	<td>${emp.phone}</td>
                        <td>
                            	<c:url value="UpdateEmp.jsp" var="empupdate">
									<c:param name="id" value="${empid}"/>
									<c:param name="fname" value="${empfname}"/>
									<c:param name="lname" value="${emplname}"/>
									<c:param name="dob" value="${empdob}"/>
									<c:param name="phone" value="${empphone}"/>
									<c:param name="gender" value="${empgender}"/>
									<c:param name="email" value="${empemail}"/>
									<c:param name="pass" value="${emppwd}"/>
									<c:param name="add" value="${empadd}"/>
									
									<c:param name="job" value="${empjob}"/>
									<c:param name="join" value="${empjoin}"/>
									<c:param name="insure" value="${empinsure}"/>
									<c:param name="zone" value="${empzone}"/>
									<c:param name="username" value="${empusername}"/>
								</c:url>
								
								<a href="${empupdate}">
								<span class="material-symbols-rounded" id="update">update</span>
								</a>
                        </td>
                        <td>
                        	<c:url value="DeleteEmp.jsp" var="empdelete">
									<c:param name="id" value="${empid}"/>
									<c:param name="username" value="${empusername}"/>
									<c:param name="fname" value="${empfname}"/>
									<c:param name="lname" value="${emplname}"/>
									<c:param name="job" value="${empjob}"/>
							</c:url>
                        	<a href="${empdelete}">
                                <span class="material-symbols-rounded" id="delete">delete</span>
                            </a>
                        </td>
                    </tr>
                </c:forEach>	
                
                
                 </tbody>
                 
                    </table>


        </div>
    </div>

    <!--table end-->

    <!------------ Add a new eployee button --------------->

    <div class="add-emp">

        <a href="AddNewForm.jsp" class="addEmp">
            <span class="btn-text">Add a new employee</span>
            <span class="material-symbols-rounded">person_add</span>
        </a>

        <!-- <button id="addEmp">
            <span class="btn-text">Add a new employee</span>
            <span class="material-symbols-rounded">person_add</span>
        </button> -->

        <!-- <div class="popup1">
            <div class="form-first">
                <div class="form-personal">
                    <h2>Add a new employee</h2>
                    
                    here was the include for from. taken photo at 8:10am
                    

                </div>
            </div>    
        </div> -->



    </div>


</div> <!--main content cloase tag-->

    <!---------------------- insert Javscript here ----------------------->
    <script src="./Admin_Thilina/js/index.js"></script>

</body>
</html>
