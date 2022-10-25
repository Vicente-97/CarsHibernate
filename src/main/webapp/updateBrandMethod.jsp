<%@page import="com.jacaranda.Brand"%>
<%@page import="com.jacaranda.CRUDBrand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% CRUDBrand cr = new CRUDBrand();
String nameBrand = String.valueOf(request.getParameter("nameBrand"));
	String country = String.valueOf(request.getParameter("country"));
	String address = String.valueOf(request.getParameter("address"));
	
	Brand b = cr.getBrand(nameBrand);
	b.setAddress(address);
	b.setCountry(country);
	
	cr.saveBrand(b);
	response.sendRedirect("indexBrand.jsp");

%>

</body>
</html>