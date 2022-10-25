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
<%CRUDBrand cr = new CRUDBrand();
Brand b = cr.getBrand(String.valueOf(request.getParameter("idEliminarBrand")));
cr.pruebaDelete(b);
response.sendRedirect("indexBrand.jsp");%>

</body>
</html>