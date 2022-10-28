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
	
	// Obtengo el id desde el parametro
	String idCar = request.getParameter("value");
	// busco el coche en la base de datos
	
	
	Car car =CRUDCar.getCar(idCar);
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
    	<a href="indexCar.jsp?marca=<%= car.getCarMaker().getName()%>"> <img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
        <span id="welcome"><h4>Sesion: <%=userSession %></h4><a href="CloseSession.jsp" ><button name="CloseSession" id="CloseSession" value="CloseSession">Log Out</button></a></span>
         
        <hr>
    </div>
    <div id="contenido">
		<form action="UpdateCarMethod.jsp" method="GET" id="updateCarForm">
			<input type="hidden" value="<%=CRUDCar.getCar(idCar).getId()%>" name = "id">
			<h1>Actualizar Vehículo: </h1>
			<p><h7>Identificador del coche a Actualizar:<br> 
			 <%=CRUDCar.getCar(idCar).getId() %> </h7></p>
		
			<br>
			<hr>
			<fieldset style="width:fit-content">
				<legend id="legends"><b>Introduce los nuevos datos: </b></legend>
				Año del vehículo: <input type="number" name="model_year" value="<%=CRUDCar.getCar(idCar).getModelYear()%>"><br>
				
				 <input type="hidden" name="car_make" value="<%=CRUDCar.getCar(idCar).getCarMaker().getName()%>" ><br>
				
				Modelo: <input type="text" name="model_auto" value="<%=CRUDCar.getCar(idCar).getModelAuto()%>"><br>
				
				 <input type="hidden" name="model_auto" value="<%=CRUDCar.getCar(idCar).getId()%>"><br>
				
				Disponibilidad: 
				Sí 
				<input type="radio" name="avaibility" value="1" 
				<%if(CRUDCar.getCar(idCar).isAvailability().equals("1")){%>
					checked
				<%}%>>
				No
				<input type="radio" name="avaibility" value="0" 
				<%if(CRUDCar.getCar(idCar).isAvailability().equals("0")){%>
					checked
				<%}%>>
				<br>
				<br>
				Precio: <input type="number" step="any" name="price" value="<%=CRUDCar.getCar(idCar).getPrice()%>" min="0" max="300000"><br>
				<br>
				Fecha de entrada: <input type="date" name="entry_date" value="<%=CRUDCar.getCar(idCar).getDateEntry()%>"><br>
				<br>
				<br>
				<a href="indexCar.jsp"><button name="updateCoche">Actualizar</button></a>
				
		
			</fieldset>
		</form>
		<p><a href="indexCar.jsp?marca=<%= car.getCarMaker().getName()%>" ><button name="Back" id="addButton" value="back">Volver </button></a></p>
		
		
    </div>     

</body>