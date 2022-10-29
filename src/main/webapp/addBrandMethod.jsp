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

	<%
	String name = String.valueOf(request.getParameter("nameBrand"));
	String country = String.valueOf(request.getParameter("countryBrand"));
	String address = String.valueOf(request.getParameter("addressBrand"));
	
	if(CRUDBrand.getBrand(name)==null){
		Brand b = new Brand(name,country,address);
		CRUDBrand.saveBrand(b);
		response.sendRedirect("indexBrand.jsp");
		
	}else{
		response.sendRedirect("AddBrand.jsp?msg_error=true");
	}
	
	%>

	

</body>
</html>