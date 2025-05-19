<%@page import="com.java.util.EmpDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- get values from functions  -->
 <%String empcount = EmpDBUtil.countemp();%>
 <%String countempDeliver = EmpDBUtil.countempDeliver();%>
 <%String countempSupp = EmpDBUtil.countempSupp();%>
 <%String countempDriver = EmpDBUtil.countempDriver();%>
 <%String countzone = EmpDBUtil.countZone();%>
 <%String countman = EmpDBUtil.countMan();%>
   
 <!--create sesion  -->
 <% 
 
 	String username = (String) session.getAttribute("username");
 
 	if (username == null) {
	    response.sendRedirect("login.jsp");
	}
 
 %>
 
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- insert g-icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- insert css -->
    <link rel="stylesheet" href="./Admin_Thilina/css/style.css">
    
    <!-- chart begin -->
    
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['emps', 'values'],
          ['Deliver',     <%=countempDeliver%>],
          ['Supplier',      <%=countempSupp%>],
          ['Driver',  <%=countempDriver%>]
        ]);

        var options = {
          title: 'Divition of Employees',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
    
    <!-- chart end -->


</head>


<body>
    <!---------------------------------------- SIDEBAR BEGINING ------------------------------------------>
    <%@ include file="Sidebar.jsp" %>
<!------------------------------------------- SIDEBAR END ------------------------------------------>

 <!--------------------------- main contian beginning ------------------------->
 


 <div class="main-content">

    <!-------------------------- CONTAINER-LEFT ------------------------------>

    <div class="container-left">

        <!-- greetings -->
        <div class="greetings">
            <h1 id="massage"></h1>
        </div>
        <!-- greetings end -->


        <!-- Card begins -->
        <div class="main-card">

            <div class="card">
                <div class="insights">
                    <span class="material-symbols-rounded">insights</span>
                </div>
                    <div class="card-inner">
                        <p class="card-top">Current situation</p>
                        <p class="card-Qnt"><%=countzone%> working</p> <!--How many Sales-->
                    </div>
                    <!-- <div class="progress">
                        <p class="card-Qnt">figur</p> 
                    </div> -->
                
            </div>
            <div class="card">
                <div class="monitoring">
                    <span class="material-symbols-rounded">monitoring</span>
                </div>
                    <div class="card-inner">
                        <p class="card-top">Employees</p>
                        <p class="card-Qnt"><%=empcount%> Employees</p> <!--How many Sales-->
                    </div>
                    <!-- <div class="progress">
                        <p class="card-Qnt">figur</p> 
                    </div> -->
                
            </div>
            <div class="card">
                <div class="grouped_bar_chart">
                    <span class="material-symbols-rounded">grouped_bar_chart</span>
                </div>
                    <div class="card-inner">
                        <p class="card-top">Connection</p>
                        <p class="card-Qnt"><%=countman%> Managers online</p> <!--How many Sales-->
                    </div>
                    <!-- <div class="progress">
                        <p class="card-Qnt">figur</p> 
                    </div> -->
                
            </div>
            
        </div>

        <div class="charts">

            <div class="card" id="donutchart" style="width: 900px; height: 400px; margine:0px 30px"></div>
            
        </div>

    </div>



    <!-------------------------------- CONTAINER-RIGHT ------------------------------------>

    <div class="container-right">


            <div class="main-card-r">

				

                <div class="card-r">
                
                		<div class="calendar_month">
                                <span class="material-symbols-rounded">calendar_month</span>
                            </div>
                            <div class="card-inner">
                                <p id="day"></p>
                                <p class="card-Qnt" id="insertdate"></p> 

                        </div>
                		
                        <div class="calendar_month">
                            <span class="material-symbols-rounded">mail</span>
                        </div>
                        <div class="card-inner">
                            <p class="card-Qnt">Messages</p>
                            <br>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam repudiandae dolores officia earum doloribus nobis sint quas distinctio veniam rem cumque, iste placeat architecto doloremque quae, quis eaque. Perspiciatis, corrupti!</p>
                        </div>
                        
                </div>

            </div>


    </div>


    
</div> <!--main content close tag-->

    <!---------------------- insert Javscript here ----------------------->
    <script src="./Admin_Thilina/js/index.js"></script>

</body>
</html>
