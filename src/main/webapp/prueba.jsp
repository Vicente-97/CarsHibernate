<%@page import="com.jacaranda.CRUDBrand"%>
<%@page import="com.jacaranda.Brand"%>
<%@page import="com.jacaranda.Car"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%  
	
	ArrayList <Brand> brandes= CRUDBrand.getBrand();
	
	for(Brand b: brandes){
		out.print("*******Marca**********<br>");
		out.print(b.getName()+"<br>");
		out.print(b.getAddress()+"<br>");

		out.print(b.getCountry()+"<br>*************Coches de la marca***************<br>");
		List<Car> c= b.getListCar();
		
		for(Car car : c){
			out.print(car.getId()+"<br>");
			out.print(car.getModelAuto()+"<br>");
			out.print(car.getModelYear()+"<br>");
			out.print(car.getPrice()+"<br>");
			out.print(car.getCarMaker().getName()+"<br>");
			
			
		} 

	}
					%>




</body>
</html>

