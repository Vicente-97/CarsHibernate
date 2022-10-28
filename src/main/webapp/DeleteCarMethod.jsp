<%@page import="com.jacaranda.Car"%>
<%@page import="com.jacaranda.CRUDCar"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%
 String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	
	if(isSession == null && userSession == null){
		response.sendRedirect("error.jsp?msg=No tienes permisos, haz login.");
	}  
%> 



<%

String idCar = String.valueOf(request.getParameter("idEliminar"));

Car c= CRUDCar.getCar(idCar);
String brand = c.getCarMaker().getName();

CRUDCar.carDelete(c);
//cr.pruebaDelete(b);value=<%=brand.getName()
response.sendRedirect("indexCar.jsp?marca="+brand);%>