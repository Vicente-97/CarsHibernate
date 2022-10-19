
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>Login</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body background="images/fondo.svg">
	<div id="container">
    	<img src="images/icono2.png" width="110px" height="100px" id="logo">
                     
         <div id="centroLogin">
     
         	<form action="checkLogin.jsp"  method="post">
            	<h1 id="titulo">Bienvenido</h1>
		<%
		//Se comprueba si existe la variable error que vendría true del checkLogin si algun campo fuese incorrecto
			String messageLog = request.getParameter("msg_error");
		
			if(messageLog!=null){
			%>
			<div>
				<span>El usuario o la contraseña son incorrectos</span>
			
			</div>
			<%}%>
			
		<!--Formulario de login que enviará la información a checkLogin.jsp y hará las comprobaciones-->
		
	            	<p id="textoUser">Usuario:
	                	<input type="text" required name="user" id="user">
	                </p>
	                <p id="textoContrasena">Contraseña: 
	                	<input type="password" required name="password" id="password">
	                </p>
                    <p><input type="submit" id="Enviar" value="Enviar"></p>
          	</form>
       	</div>
   	</div>

</body>
</html>