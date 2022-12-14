<%@page import="com.jacaranda.CRUDBrand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.CRUDBrand" %>
<%@page import="java.util.Iterator"%>
<%@ page import="com.jacaranda.Car"%>
<%@ page import="com.jacaranda.Brand"%>
<%@ page import="java.util.List"%>
<%@ page import="com.jacaranda.UtilsUsers"%>
<jsp:useBean id="brand" class="com.jacaranda.Brand"></jsp:useBean>


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
<title>Marcas</title>
<link rel="stylesheet" type="text/css" href="css/styleTablePage.css">
</head>
<body background="images/fondo2.jpg">

	<div id="header">
		<img src="images/icono2.png" width="110px" height="100px" id="logo"> 
		<span id="welcome"><h4>Sesion: <%=userSession %></h4><a href="CloseSession.jsp" ><button name="CloseSession" id="CloseSession" value="CloseSession">Log Out</button></a></span>
		 
		
		 <hr>

	</div>
	
	<div id="botonadd" align="right">
		<a href="AddBrand.jsp" ><button name="addBrand" id="addButton" value="addBrand">Añadir Marca</button></a> 
	</div>
	<br>
	<% 
			
	List<Brand> brandList = null;
	try {
		brandList = CRUDBrand.getBrands(); 
	
	} catch (Exception e) {
		String message = e.getMessage();
		response.sendRedirect("error.jsp?msg=" + message);
	}
	
	%>
	<div>
		<table>
			<tr>
				<th>Marca</th>
				<th>Pais</th>
				<th>Sucursal</th>
				<th>Delete</th>
				<th>Update</th>
				<th>Ver coches</th>
			</tr>
		
			<%
		
			Iterator<Brand> iterator = brandList.iterator();  
		
			while(iterator.hasNext()) { 
			//Itera cada linea de nuestra base datos y nos la muestra en la tabla correspondiente.
			
				brand = iterator.next();
				String id = brand.getName();
				brand.getListCar();
			%>
				<tr>
					<td><%=brand.getName()%></td>
					<td><%=brand.getCountry()%></td>
					<td><%=brand.getAddress()%></td>
					
						
					<td><a href="deleteBrand.jsp?marca=<%=brand.getName()%>"><img src="images/delete.png" width="30px"></a></td>
					<td><a href="updateBrand.jsp?marca=<%=brand.getName()%>"><img src="images/update.png" width="30px"></a></td>
					<td><a href="indexCar.jsp?marca=<%=brand.getName()%>"><img src="images/lista2.png" width="30px"></a></td>
				</tr>
			
			<%}%>
		
		</table>
	</div>
</body>
</html>