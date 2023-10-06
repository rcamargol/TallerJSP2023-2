<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String articulo = request.getAttribute("articulo").toString();
String cantidad = request.getAttribute("cantidad").toString();
String precio = request.getAttribute("precio").toString();
String nombre = request.getAttribute("nombre").toString();
String apellido = request.getAttribute("apellido").toString();
String tarjeta = request.getAttribute("tarjeta").toString();
String numtarjeta = request.getAttribute("num").toString();
String compra = request.getAttribute("compra").toString();
String ip = request.getAttribute("ip").toString();
String dia = request.getAttribute("dia").toString();
%>

<html style="color: White; background-color: Black">
<head>
<meta charset="UTF-8">
<title>Recibo</title>
<style>
.container {
	width: 80%;
	margin: 0 auto;
	padding: 20px;
}
</style>
</head>
<body>
	<center>
		<h1>Su recibo de compra</h1>
	</center>
	<div class="container">
			Señor Usuario:
			<%=nombre%>
			<%=apellido%>. <br> Su compra fue realizada satisfactoriamente
			por un valor de $<%=compra%>. Correspondiente a
			<%=cantidad%>
			<%=articulo%>. <br> <br> El precio por unidad fue de: $<%=precio%>
			<br> La compra fue realizada con tarjeta de credito numero:****
			**** ****
			<%=numtarjeta%>
			de la franquicia
			<%=tarjeta%>. Fecha de la compra:<%=dia%>. <br> <br>Direccion
			IP:<%=ip%>
		<br> <br> <a href="index.jsp">Volver a realizar nueva
			compra</a>
	</div>
</body>
</html>