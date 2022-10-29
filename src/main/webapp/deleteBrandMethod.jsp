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
Brand b = CRUDBrand.getBrand(String.valueOf(request.getParameter("idEliminarBrand")));
CRUDBrand.deleteBrand(b);
response.sendRedirect("indexBrand.jsp");%>

</body>
</html>