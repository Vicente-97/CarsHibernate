<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.Brand"%>
<%@page import="com.jacaranda.CRUDCar"%>
<%@page import="com.jacaranda.CRUDBrand"%>
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
	 
	
	
	String idBrand = request.getParameter("marca");
	Brand b = CRUDBrand.getBrand(idBrand);
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
    	<a href="indexCar.jsp?marca=<%=idBrand%>"><img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
        <span id="welcome"><h4>Sesion: <%=userSession %></h4><a href="CloseSession.jsp" ><button name="CloseSession" id="CloseSession" value="CloseSession">Log Out</button></a></span>
       
        <hr>
    </div>
    <div id="contenido">
				<form action="addCarMethod.jsp" method="GET" id="annadirCarForm">
		<h1>Añadir coche <%=idBrand%> a la venta: </h1>
		<%
				//Se comprueba si existe la variable error que vendría true del addCardMethod si el coche ya existe
				String messageLog = request.getParameter("msg_error");
				if(messageLog!=null){
				%>
					<div id="msg_error">
						<span>El ID ya existe, no se puede añadir un coche con el mismo ID.</span>
					</div>
				<%}%>
				
				
		<fieldset style="width:fit-content">
			<legend id="legends"><b>Rellene los siguientes datos: </b></legend>
					Año del vehículo: <input type="number" name="model_year" min=1800 required><br>
					<br>
					Modelo: <input type="text" name="model_auto" required><br>
					<br>
					Disponibilidad: Si<input type="radio" name="avaibility" value="1" required>
					No <input type="radio" name="avaibility" value="0" required>
					<br>
					<br>
					Precio: <input type="number" step="any" id="" name="price" min=1 max=500000 required><br>
					<br>
					Fecha de entrada: <input type="date" name="entry_date" required><br>
					<br>
					Identificador del vehiculo: <input type="text" name="id" required><br>
					<br>
					<button  name="marca" value=<%=idBrand%>>Añadir Coche</button>
		
		</fieldset>
					</form>
			<p><a href="indexCar.jsp?marca=<%=idBrand%>" ><button name="Back" id="addButton" value="back">Volver </button></a></p>
				
		
    </div>            
		
		
		
		
	
	

</body>
</html>