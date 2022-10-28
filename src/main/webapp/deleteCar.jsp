<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.CRUDCar"%>
<%@page import="com.jacaranda.Car"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%
	 String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	
	if(isSession == null && userSession == null){
		response.sendRedirect("error.jsp?msg=No tienes permisos, haz login.");
	} 
	
	// Obtengo el id desde el parametro
		String idCar = request.getParameter("value");
		// busco el coche en la base de datos
		Car car =CRUDCar.getCar(idCar);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Car</title>
<link rel="stylesheet" type="text/css" href="css/generalStyle.css">
</head>
<body background="images/fondo.svg">
      
	<div id="header">
    	<a href="indexCar.jsp?marca=<%= car.getCarMaker().getName()%>"> <img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
        <span id="welcome"><h4>Sesion: <%=userSession %></h4><a href="CloseSession.jsp" ><button name="CloseSession" id="CloseSession" value="CloseSession">Log Out</button></a></span>
         
        <hr>
    </div>
    <div id="contenido">
			<h1>Eliminar Vehículo: </h1>
			<fieldset style="width:fit-content">
				<legend id="legends"><b>Confirmar: </b></legend>
				¿Eliminar vehiculo <%=car.getShortInfo() %> ? <br><br>
				<a href="DeleteCarMethod.jsp?idEliminar=<%=car.getId()%>&idMarca<%= car.getCarMaker().getName()%>"><button name="EliminarCoche">Eliminar</button></a>
			
		
			</fieldset>
			<p><a href="indexCar.jsp?marca=<%= car.getCarMaker().getName()%>" ><button name="Back" id="addButton" value="back">Volver </button></a></p>
    </div>            

</body>
</html>