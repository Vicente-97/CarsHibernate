<%@page import="com.jacaranda.CRUDBrand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body background="images/fondo.svg">
	<%// Obtengo el id desde el parametro
	String nameBrand = request.getParameter("value");
	// busco el coche en la base de datos
	CRUDBrand cr = new CRUDBrand();
	cr.getBrand(nameBrand); %>

	<div id="header">
    	<a href="indexCar.jsp"> <img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
        <span id="welcome"><h4>Sesion: </h4></span>
        <hr>
    </div>
    <div id="contenido">
		<form action="updateBrandMethod.jsp" method="GET" id="updateCarForm">
			<input type="hidden" value="<%= cr.getBrand(nameBrand).getName()%>" name = "nameBrand">
			<h1>Actualizar Marca: </h1>
			<p><h7>Nombre de la marca a Actualizar:<br> 
			 <%=cr.getBrand(nameBrand).getName()%> </h7></p>
		
			<br>
			<hr>
			<fieldset style="width:fit-content">
				<legend id="legends"><b>Introduce los nuevos datos: </b></legend>
				Pais: <input type="text" name="country" value="<%=cr.getBrand(nameBrand).getCountry()%>"><br>
				<br>
				Dirección: <input type="text" name="address" value="<%=cr.getBrand(nameBrand).getAddress()%>"><br>
				<br>
			
				<a href="indexBrand.jsp"><button name="updateCoche">Actualizar</button></a>
				<a href="indexBrand.jsp"><button type="button" name="Volver">Volver</button></a>
		
			</fieldset>
		</form>
		
    </div>     

</body>
</html>