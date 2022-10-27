<%@page import="com.jacaranda.CRUDCar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@ page import="com.jacaranda.Car" %>
<%@ page import="java.util.List"%>
<%
	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	
	/* if(isSession == null && userSession == null){
		response.sendRedirect("error.jsp?msg=No tienes permisos, haz login.");
	} */
	
	// Obtengo el id desde el parametro
	String idCar = request.getParameter("value");
	// busco el coche en la base de datos
	
	CRUDCar cr = new CRUDCar();	
	cr.getCar(idCar);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/generalStyle.css">
<title>Actualizar Vehículo</title>
</head>
<body>
<body background="images/fondo.svg">

	<div id="header">
    	<a href="indexCar.jsp"> <img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
        <span id="welcome"><h4>Sesion: <%=userSession%></h4></span>
        <hr>
    </div>
    <div id="contenido">
		<form action="UpdateCarMethod.jsp" method="GET" id="updateCarForm">
			<input type="hidden" value="<%=cr.getCar(idCar).getId()%>" name = "id">
			<h1>Actualizar Vehículo: </h1>
			<p><h7>Identificador del coche a Actualizar:<br> 
			 <%=cr.getCar(idCar).getId() %> </h7></p>
		
			<br>
			<hr>
			<fieldset style="width:fit-content">
				<legend id="legends"><b>Introduce los nuevos datos: </b></legend>
				Año del vehículo: <input type="number" name="model_year" value="<%=cr.getCar(idCar).getModelYear()%>"><br>
				
				 <input type="hidden" name="car_make" value="<%=cr.getCar(idCar).getCarMaker().getName()%>" ><br>
				
				Modelo: <input type="text" name="model_auto" value="<%=cr.getCar(idCar).getModelAuto()%>"><br>
				
				 <input type="hidden" name="model_auto" value="<%=cr.getCar(idCar).getId()%>"><br>
				
				Disponibilidad: 
				Sí 
				<input type="radio" name="avaibility" value="1" 
				<%if(cr.getCar(idCar).isAvailability().equals("1")){%>
					checked
				<%}%>>
				No
				<input type="radio" name="avaibility" value="0" 
				<%if(cr.getCar(idCar).isAvailability().equals("0")){%>
					checked
				<%}%>>
				<br>
				<br>
				Precio: <input type="number" step="any" name="price" value="<%=cr.getCar(idCar).getPrice()%>" min="0" max="300000"><br>
				<br>
				Fecha de entrada: <input type="date" name="entry_date" value="<%=cr.getCar(idCar).getDateEntry()%>"><br>
				<br>
				<br>
				<a href="indexCar.jsp"><button name="updateCoche">Actualizar</button></a>
				<a href="indexCar.jsp"><button type="button" name="Volver">Volver</button></a>
		
			</fieldset>
		</form>
		
    </div>     

</body>