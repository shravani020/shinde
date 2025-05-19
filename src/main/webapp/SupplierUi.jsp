<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css" href="Manager/css/manageOrders.css">
    <link rel="stylesheet" type="text/css" href="Manager/css/common.css">
    
    <!-- Icons for dashboard -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <style>
    /* Styling for the buttons */
    .button {
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        margin: 100px 0;
        font-size: 18px;
        transition: background-color 0.3s ease;
        display: block;
        text-align: right; 
    }

    /* Hover effect */
    .button:hover {
        background-color: #0056b3;
    }
</style>
    
    <!-- Scroll reveal effect -->
    <script src="https://unpkg.com/scrollreveal"></script>
    
    <title>Manage Orders</title>
</head>
<body>
    <div class="container">
        <div class="right_panel">
            <div class="upper_panel">
                <div class="upper_panel_left">
                    <h6>My Orders</h6>
                </div>
                <jsp:include page="/Manager/views/upperPanelRight.jsp"></jsp:include>
            </div>
			

            <div class="middle_panel">
                <div class="left_box">
                    <h6>All Medicines</h6>
                    <div class="grid">
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Order ID</th>
                                    <th>Manager ID</th>
                                    <th>Order Date</th>
                                    <th>Item and Quantity</th>
                                    <th>Item Description</th>
                                    <th>Order Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="MordDetails" items="${dataForSupplier}">
                                    <tr>
                                        <td>${MordDetails.id}</td>
                                        <td>${MordDetails.managerID}</td>
                                        <td>${MordDetails.orderDate}</td>
                                        <td>${MordDetails.itemAndqty}</td>
                                        <td>${MordDetails.itemDesc}</td>
                                        <td>${MordDetails.orderStatus}</td>
                                        <td>
                                            <form action="ordSt" method="post"> <!-- redirect to UpdateOrderStatusServlet-->
                                                <input type="hidden" name="orderId" value="${MordDetails.id}">
                                                <input type="submit" name="action" value="Accepted" class="btn btn-success" style="height: 25px; width: 65px; background:#1074d3; color: white; ">
                                                <input type="submit" name="action" value="Rejected" class="btn btn-danger" style="height: 25px; width: 65px; background:#1074d3; color: white; ">
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="right_box">
    <a href="logout" class="button">Log Out</a> <!--redirect to LogoutServlet-->
    <a href="SupplierHome.jsp" class="button">Back to Home</a>
</div>

			</div>
            </div>
            
        </div>
    </div>
</body>
</html>
