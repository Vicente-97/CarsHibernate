<%@page import="com.jacaranda.Brand"%>
<%@page import="com.jacaranda.CRUDBrand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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