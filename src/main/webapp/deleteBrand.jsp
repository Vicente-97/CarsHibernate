<%@page import="com.jacaranda.CRUDBrand"%>
<%@page import="com.jacaranda.Brand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	
	// Obtengo el id desde el parametro
	String nameBrand = request.getParameter("marca");
	// busco el coche en la base de datos
	CRUDBrand cr = new CRUDBrand();
	cr.getBrand(nameBrand);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body background="images/fondo.svg">
      
	<div id="header">
    	<a href="indexCar.jsp"> <img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
        <span id="welcome"><h4>Sesion:</h4></span>
        <hr>
    </div>
    <div id="contenido">
			<h1>Eliminar Marca: </h1>
			<fieldset style="width:fit-content">
				<legend id="legends"><b>Confirmar: </b></legend>
				¿Eliminar Marca <%=cr.getBrand(nameBrand).getShortInfo() %> ? <br><br>
				<a href="deleteBrandMethod.jsp?idEliminarBrand=<%=cr.getBrand(nameBrand).getName()%>"><button name="EliminarCoche">Eliminar</button></a>
				<a href="indexCar.jsp"><button name="Volver">Volver</button></a>
		
			</fieldset>
		
    </div>            

</body>
</html>