<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*"%> 
<%@page import="com.java.model.Medicine"%> 
<%@page import="projectpackage1.DBconnection"%>
<%@page import="com.java.util.MedicineDBUtil"%>
<%
	
	List<Medicine> meds = MedicineDBUtil.getMedicine(Integer.parseInt(request.getParameter("ID")));

	int medid = 0;
	String code = null;
	String name = null;
	String indi = null;
	int qty = 0;
	String expDate =null;
	double price = 0;
	String manuf =null;
	
	for(Medicine m: meds){
		medid = m.getId();
		code = m.getMedCode();
		name = m.getMedName();
		indi = m.getIndication();
		qty = m.getQty();
		expDate = m.getExpDate();
		price = m.getPrice();
		manuf = m.getManufacturer();
		
	}

%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <link rel="stylesheet" type = "text/css" href="Manager/css/common.css">
    <link rel="stylesheet" type = "text/css" href="Manager/css/updateMed.css">
    
    <!-- This are icon for dash board -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
    <!-- This are icon for dash board -->
    
    <!-- scroll reveal effect -->
    <script src="https://unpkg.com/scrollreveal"></script>
    <!-- scroll reveal effect -->
   
    
	<title>View Medicine</title>
</head>
<body>

	
	
	<div class="container">

        <jsp:include page="/Manager/views/leftPanel.jsp"></jsp:include> <%--including leftPanel in another jsp --%>

        <div class="right_panel">

            <div class="upper_panel">
                <div class="upper_panel_left">
                    <h6>View Medicine</h6>
                </div>

                <jsp:include page="/Manager/views/upperPanelRight.jsp"></jsp:include><%--including upperPanelRight in another jsp --%>

            </div>
    

            <div class="middle_panel">
                <div class="left_box">
                    
                        
                    

                    <div class="profile">

                        <div class="pImg">
                              
                            
                            <img src="images/medicine.jpeg" alt="image">
                        </div>

                        <div class="details">
                        

                            <div class="detBox">
                                <p>Indication:<%=indi %></p>
                            </div>

                            <div class="detBox">
                                <p>Medicine Name:<%=name %></p>
                            </div>

                            <div class="detBox">
                                <p>Manufacturer:<%=manuf %></p>
                            </div>

                            <div class="detBox">
                                <p>Quantity:<%=qty %></p>
                            </div>
                            <div class="detBox">
                                <p>Price:<%=price %></p>
                            </div>
                            <div class="detBox">
                                <p>Expiry Date:<%=expDate %></p>
                            </div>

                        </div>

                    </div>
                   

                    
                     
                </div>

                <div class="right_box">
                
                
                
                    <p>Update <?php echo $Name."'s"; ?> Account</p>
                    <form method="post" action="updateMed">
                        <div class="namewrap">
                            <div class="fwrap">
                                <label for="fname">Medicine Code</label><br>
                                <input type="text" name="medcode" id="fname" value="<%=code %>" readonly>
                            </div>
                            <div class="lwrap">
                            	<label for="lname">Medicine Name</label><br>
                                <input type="text" name="fname" id="lname" value="<%=name %>">
                            </div>
                        </div>
                        <div class="otherwrap">
                            <label for="email">Indication</label><br>
                            <input type="text" name="ind" id="email" value="<%=indi %>"><br>
                            <label for="cNo">Quantity</label><br>
                            <input type="number" name="qty" id="cNo" value="<%=qty %>"><br>
                            <label for="pwd">Expire Date</label><br>
                            <input type="text" name="exp" id="pwd" value="<%=expDate %>"><br>
                            <label for="cpwd">Price</label><br>
                            <input type="number" name="price" id="cpwd" value="<%=price %>"><br>
                            <label for="pwd">Manufacturer</label><br>
                            <input type="text" name="manuf" id="pwd" placeholder="Manufacturer" value="<%=manuf %>"><br>
                            
                         
                            <input type="submit" value="Update" id="sbt" name="submit" onclick="return confirmUpdate('<%= name %>')"><br>

                        </div>
                                  
                    </form>
                            
                </div>
                
                                       
                 
            </div>
        </div>
        
    </div>


    
   <script src="Manager/Js/manager.js"></script>
   <script>
        ScrollReveal({
            reset: true,
            distance: '60px',
            duration: 2500,
            delay: 400
        });

        ScrollReveal().reveal('.left_box', {delay: 200, origin: 'left'});
        ScrollReveal().reveal('.right_box', {delay: 200, origin: 'right'});
        ScrollReveal().reveal('.upper_box', {delay: 200, origin: 'top'});
        
    </script>
</body>
</html>