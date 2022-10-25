<%@page import="com.jacaranda.CRUDBrand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.DAOCar" %>
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
		 <img src="images/icono2.png" width="110px" height="100px" id="logo">
		 
		 <span id="welcome"><h4>Sesion: <%=userSession%></h4></span>
		 <hr>

	</div>
	
	<div id="botonadd" align="right">
		<a href="addCar.jsp" ><button name="addCar" id="addButton" value="addCar">Add car</button></a> 
	</div>
	<br>
<% 
		
	//DAOCar daoC = new DAOCar();
	CRUD crud = new CRUD();
	List<Car> carList = null;
	try {
		carList = crud.getCars();
	
	} catch (Exception e) {
		String message = e.getMessage();
		out.print(message);
	//	response.sendRedirect("error.jsp?msg=" + message);
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
		
		Iterator<Car> iterator = carList.iterator();  
		
		while(iterator.hasNext()) { //Itera cada linea de nuestra base datos y nos la muestra en la tabla correspondiente.
			
			Car car = iterator.next();
			String id= car.getId();
		%>
			<tr>
				<td><%=car.getModelYear()%></td>
				<td><%=car.getModelAuto()%></td>
				<td><%=car.getCarMaker()%></td>
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