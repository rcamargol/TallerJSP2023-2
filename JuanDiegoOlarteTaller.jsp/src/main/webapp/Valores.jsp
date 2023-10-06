<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.net.InetAddress"%>
	<%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
	<%@page import="java.time.LocalDate"%>
	<%@page import="java.time.format.DateTimeFormatter"%>
<!DOCTYPE html>

<%
String num0 = request.getParameter("Articulos");
int num1 = Integer.parseInt(request.getParameter("Cantidad"));
int num2 = Integer.parseInt(request.getParameter("Precio"));
String num3 = request.getParameter("Nombre");
String num4 = request.getParameter("Apellido");
String num5 = request.getParameter("boton1");
String numf1 = request.getParameter("Numero1");
String numf2 = request.getParameter("Numero1");
String primeros12Digitos = numf1.substring(0, 12);
String asteriscos = "**** **** **** ";
String numeroEnmascarado = asteriscos + numf1.substring(12);
%>
<% String ip = InetAddress.getLocalHost().getHostAddress();
%>
<%!public String obtenerFecha() {
		LocalDate fecha = LocalDate.now();
		DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		return fecha.format(formato);
	}
	%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta desde el JSP</title>
</head>
<body>
<body background="Fondo3.jpg">
<font face="Castellar"> <font color="#FFFFFF"><center>
	<%
	out.println("<h1>Resultada de los numeros</h1>");
	%>
	<p>Se leyeron los siguientes valores:</p>
	<br>
	<p>
		Articulos:
		<%=num0%></p>
	<br>
	<p>
		cantidad:
		<%=num1%></p>
	<br>
	<p>
		Precio Por Unidad :
		<%="$"+num2%></p>
	<br>
	<p>
		Nombres:
		<%=num3%></p>
	<br>
	<p>
		Apellido:
		<%=num4 %></p>
	<br>
	<p>
		Tarjeta De Credito:
		<%=num5%></p>
	<br>
	<p>
		Numero Tarjeta:
		<%= numeroEnmascarado %></p>
	<br>
	<p>
		Confirmar Numero Tarjeta:
		<%=numeroEnmascarado %></p>
	<br>
	<p>
		Valor Total de Compra:
		<%="$"+num1 * num2%></p>
	<br>
	<p>
	
	<%
	out.println("la compra se realizo el "+ obtenerFecha());
	%>
	<br>
	<p>
	<%
	out.println("ip: "+ ip);
	%>
	<br>
	<p>

	<a href="RegistroCompras.jsp"> Volver</a>
</body>
</html>