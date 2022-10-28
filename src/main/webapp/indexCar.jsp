
<%@page import="com.jacaranda.CRUDBrand"%>
<%@page import="com.jacaranda.Brand"%>
<%@page import="com.jacaranda.CRUDCar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@ page import="com.jacaranda.Car" %>
<%@ page import="java.util.List"%>

<%
 	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	
	if(isSession == null && userSession == null){
		response.sendRedirect("error.jsp?msg=No tienes permisos, haz login.");
	}  
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Car Page</title>
	<link rel="stylesheet" type="text/css" href="css/styleTablePage.css">
</head>
<body background="images/fondo2.jpg">
	<div id="header">
		 <a href = "indexBrand.jsp"><img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
		 
		 <span id="welcome"><h4>Sesion: <%=userSession %></h4><a href="CloseSession.jsp" ><button name="CloseSession" id="CloseSession" value="CloseSession">Log Out</button></a></span>
		 
		 
		 <hr>

	</div>
	<% String brandName=request.getParameter("marca");	
		String brandName2 = request.getParameter("car_make"); %>
	
	<div id="botonadd" align="right">
		<a href="addCar.jsp?marca=<%=brandName%>" ><button name="addCar" id="addButton" value="addCar">Add car</button></a> 
	</div>
	<br>
	<% 
	
	Brand brand = new Brand();
	List<Car> carList= brand.getListCar();
	try {
		
	
	} catch (Exception e) {
		String message = e.getMessage();
		out.print(message);
		response.sendRedirect("error.jsp?msg=" + message);
	}
	%>
	<div>
		<table>
		
			<tr>
				<th>Model year</th>
				<th>Model Car</th>
				<th>Car maker</th>
				<th>Availability</th>
				<th>Price</th>
				<th>Entry date</th>
				<th>ID</th>
				<th>Delete</th>
				<th>Update</th>
				
			</tr>
			
		
		<%
		if (brandName==null || brandName.isEmpty()){
			brandName = brandName2;
			brand= CRUDBrand.getBrand(brandName2);
			carList = brand.getListCar();
			
		}else{
			
			brand = CRUDBrand.getBrand(brandName);
			carList = brand.getListCar();
		}
		Iterator<Car> iterator = carList.iterator();  
		
		while(iterator.hasNext()) { //Itera cada linea de nuestra base datos y nos la muestra en la tabla correspondiente.
			
			Car car = iterator.next();
			
		%>
			<tr>
				<td><%=car.getModelYear()%></td>
				<td><%=car.getModelAuto()%></td>
				<td><%=car.getCarMaker().getName()%></td>
				<td><%=car.isAvailability()%></td>
				<td><%=car.getPrice()%></td>
				<td><%=car.getDateEntry()%></td>
				<td><%=car.getId()%></td>
		
				<td><a href="deleteCar.jsp?value=<%=car.getId()%>"><img src="images/delete.png" width="30px"></a></td>
				<td><a href="UpdateCar.jsp?value=<%=car.getId()%>"><img src="images/update.png" width="30px"></a></td>
				
			</tr>
		<%
		}
		%>
		</table>
	</div>
</body>
</html>