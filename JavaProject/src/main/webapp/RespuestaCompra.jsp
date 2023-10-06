<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String nombre = request.getAttribute("nombre").toString().toUpperCase() + " "
		+ request.getAttribute("apellido").toString().toUpperCase();
String precioFinal = "$" + request.getAttribute("pFinal").toString();
String productos = request.getAttribute("cantidad").toString() + " " + request.getAttribute("articulo").toString();
String precio = "$" + request.getAttribute("precio").toString();
String numeroTarjeta = request.getAttribute("numeroTarjeta").toString();
String tarjeta = request.getAttribute("tarjeta").toString().toUpperCase();
String fecha = request.getAttribute("fecha").toString();
String ip = request.getAttribute("ip").toString();
%>

<html>

<head>
<meta charset="UTF-8">
<title>Factura</title>
</head>

<body>

	<center>
		<br>
		<h1>Factura</h1>
	</center>

	<table align="left">

		<tr>

			<td>Usuario: <b> <%=nombre%>
			</b> <br>Compra válida por un valor de: <b> <%=precioFinal%>
			</b>. <br>Compró <%=productos%> <b> </b>. <br> <br>El
				precio por unidad es de: <b> <%=precio%>
			</b> <br>La compra fue realizada con la tarjeta:<b> <%=numeroTarjeta%>
			</b> Tipo de tarjeta: <b> <%=tarjeta%>.
			</b> Fecha de adquisición de productos: <b> <%=fecha%>.
			</b> <br> <br>Accedió desde la direcci&oacute;n IP: <b> <%=ip%>
			</b>

			</td>

		</tr>

	</table>
</body>
</html>