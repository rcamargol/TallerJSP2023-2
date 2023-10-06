<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String artic = request.getAttribute("artic").toString();
String canti = request.getAttribute("canti").toString();
String preciu = request.getAttribute("preciu").toString();
String nom = request.getAttribute("nom").toString();
String apellido = request.getAttribute("apellido").toString();
String tarj = request.getAttribute("tarj").toString();
String numt = request.getAttribute("numt").toString();
String combi = request.getAttribute("combi").toString();
String ip = request.getAttribute("ip").toString();
String fecha = request.getAttribute("fecha").toString();
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confimacion de Compra</title>
<style>
/* Estilo general de la página */
body {
	/* Color de fondo de la página */
	background: linear-gradient(to right, #808080, #ffffff);
	/* Fuente del texto */
	font-family: 'Arial', sans-serif;
}

/* Estilo del título */
h1 {
	/* Color del texto */
	color: #fff;
	/* Tamaño del texto */
	font-size: 48px;
	/* Alineación del texto */
	text-align: center;
	/* Animación del texto */
	animation: bounce 1s infinite;
}

.container {
	width: 80%;
	margin: 0 auto;
	padding: 20px;
	box-shadow: 10px 10px 5px #888888; /* Una sombra gris */
}

/* Estilo del botón */
button {
	/* Ancho del botón */
	width: 200px;
	/* Altura del botón */
	height: 50px;
	/* Color del fondo del botón */
	background: #fff;
	/* Color del texto del botón */
	color: #808080;
	/* Tamaño del texto del botón */
	font-size: 24px;
	/* Fuente del texto del botón */
	font-family: 'Arial', sans-serif;
	/* Borde del botón */
	border: none;
	/* Radio del borde del botón */
	border-radius: 25px;
	/* Sombra del botón */
	box-shadow: 0px -5px #CDCCCC inset;
}

/* Estilo del botón al pasar el mouse por encima */
button:hover {
	/* Cambiar el color del fondo del botón*/
	background: #90ee90;
	/* Cambiar el color del texto del botón*/
	color: #006400;
	/* Cambiar la sombra del botón*/
	box-shadow: -5px -5px #006400 inset;
	/* Transición suave entre los estilos*/
	transition: all .3s ease;
}

/* Estilo del botón al hacer clic sobre él */
button:active {
	/* Cambiar el color del fondo del botón*/
	background: #006400;
	/* Cambiar el color del texto del botón*/
	color: #90ee90;
	/* Cambiar la sombra del botón*/
	box-shadow: 5px 5px #90ee90 inset;
	/* Transición suave entre los estilos*/
	transition: all .3s ease;
}

/* Estilo del botón al pasar el mouse por encima */
input[type="button"]:hover {
	/* Cambiar el color del fondo del botón*/
	background: #90ee90;
	/* Cambiar el color del texto del botón*/
	color: #006400;
	/* Cambiar la sombra del botón*/
	box-shadow: -5px -5px #006400 inset;
	/* Transición suave entre los estilos*/
	transition: all .3s ease;
}

/* Estilo del botón al hacer click sobre él*/
input[type="button"]:active {
	/* Cambiar el color del fondo del botón*/
	background: #006400;
	/* Cambiar el color del texto del botón*/
	color: #90ee90;
	/* Cambiar la sombra del botón*/
	box-shadow: 5px 5px #90ee90 inset;
	/* Transición suave entre los estilos*/
	transition: all .3s ease;
}

/* Definir la animación del título */
@
keyframes bounce {
	/* Inicio de la animación */ 0% {
	/* Transformar el texto para que se mueva hacia arriba */
	transform: translateY(-10px);
}
/* Mitad de la animación */
50


%
{ /* Transformar el texto para que se mueva hacia abajo */
transform


:


translateY


(


10px


)


;
}
/* Fin de la animación */
100


%
{ /* Transformar el texto para que vuelva a su posición original */
transform


:


translateY


(


0px


)


;
}
}
</style>
</head>
<body>
	<table align="center">
		<tr>
			<td>
				<h1>Confirmación de Compra</h1>
			</td>
		</tr>
	</table>
	<div class="container">
		Señor Usuario: <b><%=nom%></b> <b><%=apellido%></b> <br> Su
		compra fue realizada satisfactoriamente por un valor de <b>: $<%=combi%></b>.
		Correspondiente a <b><%=canti%></b> <b><%=artic%></b> <br> <br>
		El precio por unidad fue de <b>: $ <%=preciu%></b> <br> La compra
		fue realizada con la tarjeta de crédito: <b><%=numt%></b> de la
		franquicia <b><%=tarj%></b>. Fecha de la compra: <b><%=fecha%></b> <br>
		<br> Desde la Dirección IP: <b><%=ip%></b> <br> <br>
	</div>
	<br>
	<br>
	<center>
		<button onclick="window.location.href='index.jsp'">Volver...</button>
	</center>
</body>
</html>
