<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
int cantidad = Integer.parseInt(request.getAttribute("cantidad").toString());
int preciounitario = Integer.parseInt(request.getAttribute("preciounitario").toString());
String articulo = request.getAttribute("articulo").toString();
String estado = request.getAttribute("estado").toString();
String tarjeta = request.getAttribute("tarjeta").toString();
String numerotarjeta = request.getAttribute("numerotarjeta").toString();
String nombres = request.getAttribute("nombres").toString();
String ip = request.getAttribute("ip").toString();
String apellidos = request.getAttribute("apellidos").toString();
String fecha = request.getAttribute("fecha").toString();
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confimacion de Compra</title>
<style type="text/css">
body {
	background-color: #FFC0CB;
	/* Un color rosa claro / font-family: “Comic Sans MS”, cursive, sans-serif; / Una fuente divertida */
}

.container {
	width: 80%;
	margin: 0 auto;
	border: 5px dashed #0000FF; /* Un borde azul discontinuo */
	padding: 20px;
	box-shadow: 10px 10px 5px #888888; /* Una sombra gris */
}

h1 {
	text-align: center;
	text-transform: uppercase;
	color: #FF0000; /* Un color rojo */
	text-shadow: 2px 2px #FFFF00; /* Una sombra amarilla */
}

p {
	font-size: 20px;
	line-height: 1.5;
}

b {
	color: #008000; /* Un color verde */
}

.link {
	display: block;
	width: 100px;
	margin: 20px auto;
	padding: 10px;
	background-color: #FFFFFF; /* Un color blanco */
	color: #000000; /* Un color negro */
	text-decoration: none;
	border-radius: 10px; /* Un borde redondeado */
}

.link:hover {
	background-color: #000000; /* Un color negro */
	color: #FFFFFF; /* Un color blanco */
}
</style>
</head>
<body>

	<div class="container">
		<h1>Ticket</h1>

		<p>
			Cliente <b><%=nombres%></b> <b><%=apellidos%></b>
		</p>
		<p>
			El estado de su transaccion es <b><%=estado%></b> por un valor de <b><%=(cantidad * preciounitario)%></b>.
		</p>
		<p>
			Correspondiente a <b><%=cantidad%></b> <b><%=articulo%></b>
		</p>
		<p>
			El precio por unidad fue de <b><%=preciounitario%></b>
		</p>
		<p>
			La compra fue realizada con la tarjeta de credito: <b><%=numerotarjeta%></b>
			de la franquicia <b><%=tarjeta%></b>.Fecha de la compra: <b><%=fecha%></b>
		</p>
		
		<p>
			Desde la Direccion IP: <b><%=ip%></b>
		</p>

		<a href="index.jsp" class="link">Volver...</a>
	</div>
</body>

</html>