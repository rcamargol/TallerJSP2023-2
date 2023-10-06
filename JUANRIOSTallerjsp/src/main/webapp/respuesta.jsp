<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.net.InetAddress"%>
<%@ page import="java.io.IOException"%>
<style>
h1 {
	display: block;
	font-size: 24;
	margin-top: 0.67em;
	margin-bottom: 0.67em;
	margin-left: 0;
	margin-right: 0;
	font-weight: bold;
}
h2 {
	font-size: 12;
	font-weight: bold;
}
</style>
<%

//String respServet = request.getAttribute("respuesta").toString();
String Articulo = request.getParameter("Articulo");
String Cantidad = request.getParameter("cantidad");
String Precio = request.getParameter("precio");
String Cliente = request.getParameter("cliente");
String Apellido = request.getParameter("apellido");
String tarjeta = request.getParameter("tarjeta de credito");
String numero = request.getParameter("numero");
String numero2 = request.getParameter("numero2");
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
String date = dateFormat.format(new Date());
InetAddress dir = InetAddress.getLocalHost();
int i = dir.toString().indexOf("/");
String dirs = dir.toString().substring(i+1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultados de la compra</title>
</head>
<body>
	<right>
		
		<%
		out.println("<h1>Resultados de las compras </h1>");
		%>
		<p>Señor Usuario: <%out.print(Cliente+" "+Apellido);%> </p>
		<p>Su compra fue realizada satisfactoriamente por un valor de : <%out.print(Precio);%> Correspondiente a <%out.print(Cantidad+" "+Articulo);%>.</p>
		<p>El precio de la unidad fue de <% out.print(Precio);%>.</p>
		<p>La compra fue realizada con la tarjeta de credito numero: **** **** **** <% out.print(numero.substring(15,16)+numero.substring(16,17)+numero.substring(17,18)+numero.substring(18,19));%> de la franquicia. Fecha de compra: <%out.print(date); %></p>
		<p>Direccion IP: <% out.print(dirs);%></p>
	</right>
</body>
</html>