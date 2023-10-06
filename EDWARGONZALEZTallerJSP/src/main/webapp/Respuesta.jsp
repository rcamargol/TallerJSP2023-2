<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.net.InetAddress"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String arti = request.getParameter("articulo");
int canti = Integer.parseInt(request.getParameter("cantidad"));
int presi = Integer.parseInt(request.getParameter("precio"));
String nomb = request.getParameter("nombre");
String apelli = request.getParameter("apellido");
String boton1 = request.getParameter("boton1");
String tarjet = request.getParameter("num1");
String tarjeta = request.getParameter("num2");
String oculto = tarjet.substring(0, 12);
String asteriscos = "**** *** **** ";
String numeroOculto = oculto + tarjet.substring(12);
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Compras</title>
<link rel="icon"
	href="https://yt3.googleusercontent.com/ytc/AOPolaT1y60F13vXDJD8byvVR8zLeMeAwvvGfnc1vnnO=s900-c-k-c0x00ffffff-no-rj"
	type="image/png">
<body>
	<style>
body {
	background-image:
		url('https://exitocol.vtexassets.com/assets/vtex.file-manager-graphql/images/0aa571d4-e630-4254-9cb7-497e19ef1525___2030887f76b04133a603327efe451693.jpg');
	background-size: cover;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.content {
	text-align: center;
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
}
</style>
</head>
<body>
	<div class="content">
		<center>

			<%!public String obtenerFecha() {
		LocalDate fecha = LocalDate.now();
		DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		return fecha.format(formato);
	}%>
			<%
			String ip = InetAddress.getLocalHost().getHostAddress();
			%>
			<%
			int n1 = canti;
			int n2 = presi;
			int s = canti * presi;
			%>

			<%
			out.println("Señor usuario: " + "<b>" + nomb + "\t" + apelli + "</b>");
			%>

			<br>
			<%
			out.println("Su compra fue realizada satisfactoriamente por un valor de " + "<b>" + "$" + s + "</b>"
					+ ".Correspondiente a " + "<b>" + canti + "\t" + arti + "</b>" + ".");
			%>
			<br>


			<%
			out.println("El precio por unidad fue de: " + "<b>" + "$" + presi + "</b>");
			%>

			<br> <br>
			<%
			out.println("La compra fue realizada con la tarjeta de crédito número: " + "**** **** **** "
					+ numeroOculto.substring(numeroOculto.length() - 4) + " de la franquicia " + "<b>" + boton1 + "</b>");
			%>

			<%
			out.println(".Fecha de la compra: " + "<b>" + obtenerFecha() + "</b>");
			%>
			<br> <br>
			<%
			out.println("Direccion IP: " + "<b>" + ip + "</b>");
			%>
			<br> <a href="Formulario.jsp"> Realizar otra Compra</a>
</body>
</html>