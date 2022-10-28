<%@page import="com.jacaranda.CRUDBrand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/generalStyle.css">
</head>
<body background="images/fondo.svg">
	<%// Obtengo el id desde el parametro
	String nameBrand = request.getParameter("marca");
	// busco el coche en la base de datos
	
	CRUDBrand.getBrand(nameBrand); %>
	


	<div id="header">
    	<a href="indexBrand.jsp"> <img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
       <span id="welcome"><h4>Sesion: <%=userSession %></h4><a href="CloseSession.jsp" ><button name="CloseSession" id="CloseSession" value="CloseSession">Log Out</button></a></span>
        
        <hr>
    </div>
    <div id="contenido">
		<form action="updateBrandMethod.jsp" method="GET" id="updateCarForm">
			<input type="hidden" value="<%= CRUDBrand.getBrand(nameBrand).getName()%>" name = "nameBrand">
			<h1>Actualizar Marca: </h1>
			<p><h7>Nombre de la marca a Actualizar:<br> 
			 <%=CRUDBrand.getBrand(nameBrand).getName()%> </h7></p>
		
			<br>
			<hr>
			<fieldset style="width:fit-content">
				<legend id="legends"><b>Introduce los nuevos datos: </b></legend>
				Pais: <input type="text" name="country" value="<%=CRUDBrand.getBrand(nameBrand).getCountry()%>"><br>
				<br>
				Dirección: <input type="text" name="address" value="<%=CRUDBrand.getBrand(nameBrand).getAddress()%>"><br>
				<br>
			
				<a href="indexBrand.jsp"><button name="updateCoche">Actualizar</button></a>
				
		
			</fieldset>
		</form>
		<p><a href="indexBrand.jsp" ><button name="Back" id="addButton" value="Back">Volver </button></a></p>
		
    </div>     

</body>
</html>