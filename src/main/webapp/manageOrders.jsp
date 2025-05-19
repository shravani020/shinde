<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String username = (String) session.getAttribute("username");
if (username == null) {
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css"
	href="Manager/css/manageOrders.css">
<link rel="stylesheet" type="text/css" href="Manager/css/common.css">

<!-- Icons for dashboard -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Scroll reveal effect -->
<script src="https://unpkg.com/scrollreveal"></script>

<title>Manage Orders</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/Manager/views/leftPanel.jsp"></jsp:include>

		<div class="right_panel">
			<div class="upper_panel">
				<div class="upper_panel_left">
					<h6>Manage Orders</h6>
				</div>

				<jsp:include page="/Manager/views/upperPanelRight.jsp"></jsp:include>
			</div>

			<div class="middle_panel">
				<div class="left_box">
					<h6>All Orders</h6>
					<div class="grid">
						<table border="1">
							<tr>
								<th>Order ID</th>
								<th>Manager ID</th>
								<th>Order Date</th>
								<th>Item and Quantity</th>
								<th>Item Description</th>
								<th>Order Status</th>
								<th>Actions</th>
							</tr>
							<c:forEach var="managerOrd" items="${mOrderDetails}">
								<tr>
									<td>${managerOrd.id}</td>
									<td>${managerOrd.managerID}</td>
									<td>${managerOrd.orderDate}</td>
									<td>${managerOrd.itemAndqty}</td>
									<td>${managerOrd.itemDesc}</td>
									<td>${managerOrd.orderStatus}</td>
									<td>
										<!-- Check the order status and conditionally display the Update or Delete button -->
										<c:choose>
											<c:when
												test="${managerOrd.orderStatus eq 'Pending' or managerOrd.orderStatus eq 'Rejected'}">
												<c:url value="updateOrder.jsp" var="orderUpdate">
													<c:param name="id" value="${managerOrd.id}" />
													<c:param name="managerID" value="${managerOrd.managerID}" />
													<c:param name="orderDate" value="${managerOrd.orderDate}" />
													<c:param name="itemAndqty" value="${managerOrd.itemAndqty}" />
													<c:param name="itemDesc" value="${managerOrd.itemDesc}" />
													<c:param name="orderStatus"
														value="${managerOrd.orderStatus}" />
												</c:url>
												<a href="${orderUpdate}"> <input type="button" style="height: 25px; width: 65px; background:#1074d3; color: white; "
													name="update" value="Change">
												</a>
											</c:when>

										</c:choose>
									</td>
								</tr>
							</c:forEach>
						</table>

					</div>
				</div>

				<div class="right_box">
					<p>Place the Order</p>
					<form action="ManOrd" method="post"> <!-- redirect to the ManagerOrderServlet -->
						<!-- Item Details -->
						<label for="item_name">Item with Quantity:</label>
						<textarea id="itemAndqty" name="itemAndqty" rows="10" cols="50"
							placeholder="Item___--Qty"></textarea>
						<br>
						<br>
						<br> <label for="item_description">Order Description:</label>
						<textarea id="item_description" name="item_description" rows="4"
							cols="50"></textarea>
						<br>
						<br>
						<br>

						<!-- Submit Button -->
						<input type="submit" value="Submit Order" name="submit" style="background:#1074d3; color: white; ">
					</form>

			

				</div>
			</div>
		</div>
	</div>
</body>
</html>
