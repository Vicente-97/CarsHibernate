<%@page import="com.jacaranda.CRUDBrand"%>
<%@page import="com.jacaranda.Brand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	
	// Obtengo el id desde el parametro
	String nameBrand = request.getParameter("marca");
	// busco el coche en la base de datos
	
	CRUDBrand.getBrand(nameBrand);
	
%>
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
      
	<div id="header">
    	<a href="indexBrand.jsp"> <img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
         <span id="welcome"><h4>Sesion: <%=userSession %></h4><a href="CloseSession.jsp" ><button name="CloseSession" id="CloseSession" value="CloseSession">Log Out</button></a></span>
        
        <hr>
    </div>
    <div id="contenido">
			<h1>Eliminar Marca: </h1>
			<fieldset style="width:fit-content">
				<legend id="legends"><b>Confirmar: </b></legend>
				¿Eliminar Marca <%=CRUDBrand.getBrand(nameBrand).getShortInfo() %> ? <br><br>
				<a href="deleteBrandMethod.jsp?idEliminarBrand=<%=CRUDBrand.getBrand(nameBrand).getName()%>"><button name="EliminarCoche">Eliminar</button></a>
				
			</fieldset>
			<p><a href="indexBrand.jsp" ><button name="Back" id="addButton" value="Back">Volver </button></a></p>
		
    </div>            

</body>
</html>