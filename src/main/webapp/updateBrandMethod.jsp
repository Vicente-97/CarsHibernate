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
<title>Insert title here</title>
</head>
<body>
<% 
String nameBrand = String.valueOf(request.getParameter("nameBrand"));
	String country = String.valueOf(request.getParameter("country"));
	String address = String.valueOf(request.getParameter("address"));
	
	Brand b = CRUDBrand.getBrand(nameBrand);
	b.setAddress(address);
	b.setCountry(country);
	
	CRUDBrand.saveBrand(b);
	response.sendRedirect("indexBrand.jsp");

%>

</body>
</html>