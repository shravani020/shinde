<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <% String un = (String) session.getAttribute("username"); %>
        
<div class="sidebar">
        <div class="top">
            <div class="logo">
                <!-- logo -->
                <img src="images/omos_logo.png" alt="company_logo" class="logoimg">
                <span>Omos Pharmacy</span>
            </div>
            <!-- menu btn -->
            <span class="material-symbols-rounded" id="btn">menu</span>
        </div>
        <div class="user">
            <img src="images/profile logo.png" alt="user_pic" class="userimg">
            <div>
                <p class="bold"><%=un %></p>
           
            </div>
        </div>
        <ul>
            <li>
                <a href="AdminDb.jsp">
                    <span class="material-symbols-rounded">grid_view</span>
                    <span class="nav_item">Dashboard</span>
                </a>
                <span class="tooltip">Dashboard</span>
            </li>
            <li>
                <a href="Employee.jsp">
                    <span class="material-symbols-rounded">badge</span>
                    <span class="nav_item">Employee</span>
                </a>
                <span class="tooltip">Employee</span>
            </li>
            <li>
                <a href="AddNewForm.jsp">
                    <span class="material-symbols-rounded">person_add</span>
                    <span class="nav_item">Add new</span>
                </a>
                <span class="tooltip">Add+</span>
            </li>
<!--             <li>
                <a href="#">
                    <span class="material-symbols-rounded">local_shipping</span>
                    <span class="nav_item">Deliver</span>
                </a>
                <span class="tooltip">Deliver</span>
            </li>
            <li>
                 -->
            </li>
        </ul>
        <div class="logout">
            <a href="logout">
                <span class="material-symbols-rounded">logout</span>
                <span class="nav_item">Logout Now</span>
            </a>
            <span class="tooltip">Logout</span>
        </div>
    </div>