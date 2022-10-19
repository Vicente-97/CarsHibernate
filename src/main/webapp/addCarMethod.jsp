<%@page import="com.jacaranda.Brand"%>
<%@page import="com.jacaranda.Car"%>
<%@page import="com.jacaranda.CRUD"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.DAOCar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add car method</title>
</head>
<body>
	<%
		 CRUD cr = new CRUD(); 
		DAOCar car = new DAOCar();
		int modelYear=Integer.valueOf(request.getParameter("model_year"));
		String modelAuto=String.valueOf(request.getParameter("model_auto"));
		String carMake= String.valueOf(request.getParameter("car_make"));
		String avaibility=String.valueOf(request.getParameter("avaibility"));
		Double price=Double.valueOf(request.getParameter("price"));
		LocalDate entry_date = LocalDate.parse(String.valueOf((request.getParameter("entry_date"))));
		String id = String.valueOf(request.getParameter("id"));
		Car car1 = new Car(modelYear, modelAuto, carMake, avaibility, price, entry_date, id);
		cr.pruebaInsert(car1);
		//car.addCar(modelYear, modelAuto, carMake, avaibility, price, entry_date, id);
	%>
		<jsp:forward page="indexCar.jsp"></jsp:forward>

</body>
</html>