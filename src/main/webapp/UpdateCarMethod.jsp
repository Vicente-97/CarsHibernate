<%@page import="com.jacaranda.CRUDBrand"%>
<%@page import="com.jacaranda.CRUDCar"%>
<%@page import="com.jacaranda.Car"%>
<%@page import="com.jacaranda.Brand"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>


<%
//Recoge los campos del formulario y hace uso del método updateCar, te redirige a la pagina de inicio.
		CRUDCar cr = new CRUDCar();


		Integer modelYear=Integer.valueOf(request.getParameter("model_year"));
		String modelAuto=String.valueOf(request.getParameter("model_auto"));
		String carMake=String.valueOf(request.getParameter("car_make"));
		
		Brand b = CRUDBrand.getBrand(carMake);
		
		
		String avaibility=String.valueOf(request.getParameter("avaibility"));
		Double price=Double.valueOf(request.getParameter("price"));
		LocalDate entry_date = LocalDate.parse(String.valueOf((request.getParameter("entry_date"))));
		String id = String.valueOf(request.getParameter("id"));
		
		Car car =cr.getCar(id);
		car.setModelAuto(modelAuto);
		car.setModelYear(modelYear);
		car.setCarMaker(b);
		car.setAvailability(avaibility);
		car.setPrice(price);
		car.setDateEntry(entry_date);
		car.setId(id);
		
		/* if(car.getCarMaker()==null){
			Brand br = new Brand();
			CRUDBrand.getBrand()
			
		} */
		cr.updateCar(car);
	
		
		%>
		<% response.sendRedirect("indexCar.jsp?marca=" + car.getCarMaker().getName());%>
		
		
