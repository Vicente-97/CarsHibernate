<%@page import="com.jacaranda.Car"%>
<%@page import="com.jacaranda.CRUDCar"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>



<%

String idCar = String.valueOf(request.getParameter("idEliminar"));

Car c= CRUDCar.getCar(idCar);
String brand = c.getCarMaker().getName();

CRUDCar.carDelete(c);
//cr.pruebaDelete(b);value=<%=brand.getName()
response.sendRedirect("indexCar.jsp?marca="+brand);%>