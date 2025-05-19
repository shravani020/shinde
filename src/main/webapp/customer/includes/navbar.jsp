<%@page import="projectpackage1.*"%>
<%@page import="com.java.util.*"%>
<%@page import="com.java.model.*"%>
<%@page import="java.util.*"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="CustomerHome.jsp">Medicines</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="CustomerHome.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
				<%
				String un = (String) session.getAttribute("username");
				if (un != null) {
					
					
				%>
				<li class="nav-item"><a class="nav-link" href="customerProfile.jsp"><%=un%></a></li>
				<li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</div>
</nav>