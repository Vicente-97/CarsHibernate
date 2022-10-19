<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.DAOCar"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.jacaranda.Car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	
	if(isSession == null && userSession == null){
		response.sendRedirect("error.jsp?msg=No tienes permisos, haz login.");
	}
	
	// Obtengo el id desde el parametro
	String idCar = request.getParameter("value");
	// busco el coche en la base de datos
	DAOCar daoCar = new DAOCar();
	Car car = daoCar.getCar(idCar);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AÑADIR</title>
        <link rel="stylesheet" type="text/css" href="css/generalStyle.css">

</head>
<body background="images/fondo.svg">

	<div id="header">
    	<a href="indexCar.jsp"> <img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
        <span id="welcome"><h4>Sesion: <%=userSession%></h4></span>
        <hr>
    </div>
    <div id="contenido">
				<form action="addCarMethod.jsp" method="GET" id="annadirCarForm">
		<h1>Añadir coche a la venta: </h1>
		<fieldset style="width:fit-content">
			<legend id="legends"><b>Rellene los siguientes datos: </b></legend>
					Año del vehículo: <input type="number" name="model_year"><br>
					<br>
					Marca o Fabricante: <input type="text" name="car_make"><br>
					<br>
					Modelo: <input type="text" name="model_auto"><br>
					<br>
					Disponibilidad: No<input type="radio" name="avaibility" value="false">
					Sí <input type="radio" name="avaibility" value="true">
					<br>
					<br>
					Precio: <input type="number" step="any" name="price"><br>
					<br>
					Fecha de entrada: <input type="date" name="entry_date"><br>
					<br>
					Identificador del vehiculo: <input type="text" name="id"><br>
					<br>
					<a href="indexCar.jsp"><button name="AnnadirCoche">Añadir Coche</button></a>
		
		</fieldset>
					</form>
		
    </div>            
		
		
		
		
	
	

</body>
</html>