<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <h1>Hari Hari Wada</h1>
     <h6>All Medicines</h6>
                                    
                        <div class="grid">
                            <table border="1">
        <tr>
            <th>Order ID</th>
            <th>Manager ID</th>
            <th>Order Date</th>
            <th>Item and Quantity</th>
            <th>Item Description</th>
            <th>Order Status</th>
        </tr>
        
        <c:forEach var="mangerOrd" items="${mOrderDetails}">
			
			
            <tr>
                <td>${mangerOrd.id}</td>
                <td>${mangerOrd.managerID}</td>
                <td>${mangerOrd.orderDate}</td>
                <td>${mangerOrd.itemAndqty}</td>
                <td>${mangerOrd.itemDesc}</td>
                <td>${mangerOrd.orderStatus}</td>
            </tr>
        </c:forEach>
    </table>
     
</body>
</html>