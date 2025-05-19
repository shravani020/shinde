<%@page import="java.text.DecimalFormat"%>
<%@page import="projectpackage1.*"%>
<%@page import="com.java.util.*"%>
<%@page import="com.java.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	DecimalFormat dcf = new DecimalFormat("#.##");
	request.setAttribute("dcf", dcf);
	//User auth = (User) request.getSession().getAttribute("auth");
	List<Order> orders = null;
	//if(auth != null)
	
		String username = (String) session.getAttribute("username");
		System.out.println("Username from session: " + username);

if (username == null) {
    response.sendRedirect("login.jsp");
    return;
}

User user = UserDBUtil.getUser(username);
if (user == null) {
    out.println("<p style='color:red;'>User not found for username: " + username + "</p>");
    return;
}

OrderDao orderDao = new OrderDao(DBconnection.getConnection());
orders = orderDao.userOrders(user.getId());
	/* String username = (String) session.getAttribute("username");
	
	if (username != null) {
	    //request.setAttribute("person", auth);
	    OrderDao orderDao  = new OrderDao(DBconnection.getConnection());
	    User user = UserDBUtil.getUser(username);//passsing the user id to a user object
		orders = orderDao.userOrders(user.getId());// using the user obejct in UserOder methd
		
	}else{
		response.sendRedirect("login.jsp");
	} */
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
	
	%>
<!DOCTYPE html>
<html>
<head>
<%@include file="customer/includes/head.jsp"%>
<title>Orders</title>
</head>
<body>
	<%@include file="customer/includes/navbar.jsp"%>
	<div class="container">
		<div class="card-header my-3">All Orders</div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Date</th>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
			
			<%
			if(orders != null){
				for(Order o:orders){%>
					<tr>
						<td><%=o.getDate() %></td>
						<td><%=o.getMedName() %></td>
						<td><%=o.getManufacturer() %></td>
						<td><%=o.getQunatity() %></td>
						<td><%=dcf.format(o.getPrice()) %></td>
						<td><a class="btn btn-sm btn-danger" href="cancel-order?id=<%=o.getOrderId()%>">Cancel Order</a></td>
					</tr>
				<%}
			}
			%>
			
			</tbody>
		</table>
	</div>
	<%@include file="customer/includes/footer.jsp"%>
</body>
</html>