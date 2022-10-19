<%@page import="com.jacaranda.Car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.DAOCar"%>

<%
//Recoge los campos del formulario y hace uso del método updateCar, te redirige a la pagina de inicio.
		DAOCar car = new DAOCar();
		Integer modelYear=Integer.valueOf(request.getParameter("model_year"));
		String modelAuto=String.valueOf(request.getParameter("model_auto"));
		String carMake=String.valueOf(request.getParameter("car_make"));
		String avaibility=String.valueOf(request.getParameter("avaibility"));
		Double price=Double.valueOf(request.getParameter("price"));
		LocalDate entry_date = LocalDate.parse(String.valueOf((request.getParameter("entry_date"))));
		String id = String.valueOf(request.getParameter("id"));
		
		Car carNuevo = new Car(modelYear,modelAuto,carMake,avaibility,price,entry_date,id);
		car.updateCar(carNuevo);
		response.sendRedirect("indexCar.jsp");
		%>
		
