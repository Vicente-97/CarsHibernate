<%@page import="com.jacaranda.Brand"%>
<%@page import="com.jacaranda.CRUDBrand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Add Brand Method</title>
</head>
<body>

	<%CRUDBrand cr = new CRUDBrand();
	String name = String.valueOf(request.getParameter("nameBrand"));
	String country = String.valueOf(request.getParameter("countryBrand"));
	String address = String.valueOf(request.getParameter("addressBrand"));
	Brand b = new Brand(name,country,address);
	cr.saveBrand(b);
	
	%>
	<jsp:forward page="indexBrand.jsp"></jsp:forward>
	

</body>
</html>