<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String tarjeta= request.getAttribute("tarjeta").toString();
	String compra= request.getAttribute("compra").toString();
	String precio= request.getAttribute("precio").toString();
	String producto= request.getAttribute("producto").toString();
	String nombre= request.getAttribute("nombre").toString();
	String ip= request.getAttribute("ip").toString();
	String numero= request.getAttribute("tarjetan").toString();
	String tiempoLocal= request.getAttribute("tiempo").toString();

	
	
%>
<html>
<head>
<style>
body{
color: darkblue;
}
h1{
color:	darkblue;
}

table,a{
background-color: lightblue;


}
</style>
<meta charset="ISO-8859-1">
<title>Resultado de la compra</title>
</head>
<body style="background-color:#FCFF33;">
<center><h1>datos de la compra</h1></center>
<table align="center">
<tr><td>Señor usuario: <b><%=nombre%></b></td><tr><br>
<tr><td>Su compra fue realisada exitosamente por un valor de: <b><%=compra%></b> correspondiente a: <b><%=producto%><br><br></b></td></tr>
<tr><td>El precio por unidad fue de: <b><%=precio%></b></td><tr><br>
<tr><td>La compra fue realisada con la tarjeta de numero: **** **** **** <b><%=numero%></b> de la franquicia: <b><%=tarjeta%></b>. Fecha de la compra: <b><%=tiempoLocal%></b></td><tr>
<tr><td>direccion IP: <b><%=ip%></b></td><tr><br>
<tr><td colspan="2"><a href="CarritoDeCompras.jsp">realisar otra compra</a></td></tr>
</table>
</body>
</html>