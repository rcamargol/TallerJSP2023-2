
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.net.InetAddress"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.format.DateTimeFormatter"%>


<!DOCTYPE html>
<%
String art = request.getParameter("articulo");
int num1 = Integer.parseInt(request.getParameter("Cantidad"));
int num2 = Integer.parseInt(request.getParameter("Precio"));
String num3 = request.getParameter("nombre");
String num4 = request.getParameter("apellido");
String num5 = request.getParameter("boton1");
String siui = request.getParameter("Numero1");
int compra = num1 * num2;
String primeros12Digitos = siui.substring(0, 12);
String asteriscos = "**** **** **** ";
String numeroEnmascarado = asteriscos + siui.substring(12);
%>
<%
String ip = InetAddress.getLocalHost().getHostAddress();
%>
<%!public String obtenerFecha() {
		LocalDate fecha = LocalDate.now();
		DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		return fecha.format(formato);
	}%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta desde el JSP</title>
</head>
<body>
	<img src="fondo1.jpg" alt="Imagen a pantalla completa"
		class="imagen-pantalla-completa">
	<style>
body {
	text-align: center;
	margin: auto;
	font-size: 25px;
	margin: 0;
	overflow: hidden;
}

.imagen-pantalla-completa {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover;
	z-index: -1;
}

div {text-align ="center";
	
}

p {
	font-family: time new roman;
	color: #FFFFFF;
}
</style>
	<div>
		<p>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br>
			<%
			out.println("Señor usuario: " + "<b>" + num3 + "</b>");
			%>
			<br> <br>
			<%
			out.println("Su compra fue realizada satisfactoriamente por un valor de " + "<b>" + compra + "." + "</b>"
					+ " Correspondiente a " + "<b>" + num1 + " " + art + "." + "</b>");
			%>
			<br> <br>
			<%
			out.println("El precio por unidad de: $" + "<b>" + num2 + "</b>");
			%>
			<br> <br>
			<%
			out.println("La compra fue realizada con la tarjeta de credito número: " + numeroEnmascarado + " de la franquicia "
					+ "<b>" + num5 + ". " + "</b>" + "Fecha de la compra: " + obtenerFecha());
			%>
			<br> <br>

			<%
			out.println("Dirección IP: " + ip);
			%>
			<br> <br> <a href="Formulario.jsp"> Volver</a>
	</div>

</body>
</html>