<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Brand</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="css/generalStyle.css">
<%
 String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	
	if(isSession == null && userSession == null){
		response.sendRedirect("error.jsp?msg=No tienes permisos, haz login.");
	}  
%> 

</head>
<body background="images/fondo.svg">

	<div id="header">
    	<a href="indexBrand.jsp"> <img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
        <span id="welcome"><h4>Sesion: <%=userSession %></h4><a href="CloseSession.jsp" ><button name="CloseSession" id="CloseSession" value="CloseSession">Log Out</button></a></span>
        <br>
        <hr>
    </div>
    <div id="contenido">
				<form action="addBrandMethod.jsp" method="GET" id="annadirBrandForm">
		<h1>Añadir Marca: </h1>
		<fieldset style="width:fit-content">
			<legend id="legends"><b>Rellene los siguientes datos: </b></legend>
					Nombre de la Marca: <input type="text" name="nameBrand" required><br>
					<br>
					Pais: <input type="text" name="countryBrand" required><br>
					<br>
					Dirección: <input type="text" name="addressBrand" required><br>
					<br>
					
					
					<a href="indexCar.jsp"><button name="annadirBrand">Añadir Marca</button></a>
		
		</fieldset>
					</form>
					
					<p><a href="indexBrand.jsp" ><button name="Back" id="addButton" value="Back">Volver </button></a></p>
					<!-- <a href="indexBrand.jsp"><button name="annadirBrand">Back</button></a> -->
		
    </div>            

</body>
</html>