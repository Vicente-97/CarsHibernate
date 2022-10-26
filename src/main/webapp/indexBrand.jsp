<%@page import="com.jacaranda.CRUDBrand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.CRUDBrand" %>
<%@page import="java.util.Iterator"%>
<%@ page import="com.jacaranda.Car"%>
<%@ page import="com.jacaranda.Brand"%>
<%@ page import="java.util.List"%>

<%
	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	
	/* if(isSession == null && userSession == null){
		response.sendRedirect("error.jsp?msg=No tienes permisos, haz login.");
	} */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/styleTablePage.css">
</head>
<body background="images/fondo2.jpg">
	<div id="header">
		 <img src="images/icono2.png" width="110px" height="100px" id="logo">
		 
		 <span id="welcome"><h4>Sesion: <%=userSession%></h4></span>
		 <hr>

	</div>
	
	<div id="botonadd" align="right">
		<a href="AddBrand.jsp" ><button name="addBrand" id="addButton" value="addBrand">Añadir Marca</button></a> 
	</div>
	<br>
<% 
		
	CRUDBrand crudB = new CRUDBrand();
	List<Brand> brandList = null;
	try {
		brandList = crudB.getBrands(); //falta getBrands de CRUD
	
	} catch (Exception e) {
		String message = e.getMessage();
		response.sendRedirect("error.jsp?msg=" + message);
	}
	
%>
	<div>
		<table>
		
			<tr>
				<th></th>
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
			
			Brand brand = iterator.next();
			String id = brand.getName();
		%>
			<tr>
				<td>INSERTAR IMAGEN MARCA</td>
				<td><%=brand.getName()%></td>
				<td><%=brand.getCountry()%></td>
				<td><%=brand.getAddress()%></td>
				<!-- <td>//brand.getlistCar().length%></td> Falta getLisCar -->
					
				<td><a href="deleteBrand.jsp?value=<%=brand.getName()%>"><img src="images/delete.png" width="30px"></a></td>
				<td><a href="updateBrand.jsp?value=<%=brand.getName()%>"><img src="images/update.png" width="30px"></a></td>
				<td><a href="indexCar.jsp?value=<%=brand.getName()%>"><img src="images/lista2.png" width="30px"></a></td>
			</tr>
			
		<%}%>
		
		</table>
	</div>
</body>