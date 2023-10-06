<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% 
String numerot=request.getParameter("TarjetaCredito");
String a[] =  numerot.split("");
int  cifras =  a.length;
String asteriscos =  "*".repeat(numerot.length()-4); 
String tarjetaOculta = asteriscos +  a[cifras-4]+a[cifras-3]+a[cifras-2]+ a[cifras-1];
LocalDate ahora = LocalDate.now();
DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/uuuu");
ahora.format(formato);
out.println("Señor usuario:"+request.getAttribute("nombreCliente")+request.getAttribute("Apellidoscliente"));
out.println("su compra fue realizada satisfactoriamente por un valor de $"+request.getAttribute("totalFactura"));
out.println("correspondiente a "+request.getAttribute("cantidad")+request.getAttribute("articulos"));
out.println("el precio por unidad fue de $"+request.getAttribute("precio"));
out.println("la compra fue realizada por la tarjeta credito  numero:"+tarjetaOculta);
out.println("el cliente selecciono la tarjeta"+request.getParameter("franquicia").toLowerCase());
out.println("la fecha actual de su compra es :"+ahora.format(formato));
request.getRemoteAddr();
out.println("la direccion  IP del cliente es :"+request.getRemoteAddr());
out.println("ingrese aqui para una nueva compra");
out.println("<a href='"+request.getContextPath()+"'>Tienda</a>");



%>

</body>
</html>