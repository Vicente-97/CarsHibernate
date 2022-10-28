<%@page import="com.jacaranda.Brand"%>
<%@page import="com.jacaranda.CRUDCar"%>
<%@page import="com.jacaranda.Car"%>
<%@page import="com.jacaranda.CRUDBrand"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
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
<title>Add car method</title>
</head>
<body>
	<%
	
		
		int modelYear=Integer.valueOf(request.getParameter("model_year"));
		String modelAuto=String.valueOf(request.getParameter("model_auto"));
		String carMake= String.valueOf(request.getParameter("marca"));
		
		Brand brand = CRUDBrand.getBrand(carMake);
		
		String avaibility=String.valueOf(request.getParameter("avaibility"));
		Double price=Double.valueOf(request.getParameter("price"));
		LocalDate entry_date = LocalDate.parse(String.valueOf((request.getParameter("entry_date"))));
		String id = String.valueOf(request.getParameter("id"));
		
		
		Car car1 = new Car(modelYear, modelAuto, brand, avaibility, price, entry_date, id);
		
		CRUDCar.saveCar(car1);
		
	%>
		<% response.sendRedirect("indexCar.jsp?marca=" + car1.getCarMaker().getName());%>

</body>
</html>