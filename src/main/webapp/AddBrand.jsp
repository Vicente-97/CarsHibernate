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

</head>
<body background="images/fondo.svg">

	<div id="header">
    	<a href="indexBrand.jsp"> <img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
        <span id="welcome"><h4>Sesion: </h4></span>
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
		
    </div>            

</body>
</html>