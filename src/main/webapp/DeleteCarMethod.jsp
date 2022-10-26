<%@page import="com.jacaranda.Car"%>
<%@page import="com.jacaranda.CRUDCar"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="com.jacaranda.DAOCar"%>


<%

String idCar = request.getParameter("idEliminar");

Car c= CRUDCar.getCar(idCar);
String brand = c.getCarMaker().getName();

CRUDCar.carDelete(c);
//cr.pruebaDelete(b);value=<%=brand.getName()
response.sendRedirect("indexBrand.jsp?value="+brand);%>