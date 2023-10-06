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
/* Estilo general de la p�gina */
body {
	/* Color de fondo de la p�gina */
	background: linear-gradient(to right, #808080, #ffffff);
	/* Fuente del texto */
	font-family: 'Arial', sans-serif;
}

/* Estilo del t�tulo */
h1 {
	/* Color del texto */
	color: #fff;
	/* Tama�o del texto */
	font-size: 48px;
	/* Alineaci�n del texto */
	text-align: center;
	/* Animaci�n del texto */
	animation: bounce 1s infinite;
}

.container {
	width: 80%;
	margin: 0 auto;
	padding: 20px;
	box-shadow: 10px 10px 5px #888888; /* Una sombra gris */
}

/* Estilo del bot�n */
button {
	/* Ancho del bot�n */
	width: 200px;
	/* Altura del bot�n */
	height: 50px;
	/* Color del fondo del bot�n */
	background: #fff;
	/* Color del texto del bot�n */
	color: #808080;
	/* Tama�o del texto del bot�n */
	font-size: 24px;
	/* Fuente del texto del bot�n */
	font-family: 'Arial', sans-serif;
	/* Borde del bot�n */
	border: none;
	/* Radio del borde del bot�n */
	border-radius: 25px;
	/* Sombra del bot�n */
	box-shadow: 0px -5px #CDCCCC inset;
}

/* Estilo del bot�n al pasar el mouse por encima */
button:hover {
	/* Cambiar el color del fondo del bot�n*/
	background: #90ee90;
	/* Cambiar el color del texto del bot�n*/
	color: #006400;
	/* Cambiar la sombra del bot�n*/
	box-shadow: -5px -5px #006400 inset;
	/* Transici�n suave entre los estilos*/
	transition: all .3s ease;
}

/* Estilo del bot�n al hacer clic sobre �l */
button:active {
	/* Cambiar el color del fondo del bot�n*/
	background: #006400;
	/* Cambiar el color del texto del bot�n*/
	color: #90ee90;
	/* Cambiar la sombra del bot�n*/
	box-shadow: 5px 5px #90ee90 inset;
	/* Transici�n suave entre los estilos*/
	transition: all .3s ease;
}

/* Estilo del bot�n al pasar el mouse por encima */
input[type="button"]:hover {
	/* Cambiar el color del fondo del bot�n*/
	background: #90ee90;
	/* Cambiar el color del texto del bot�n*/
	color: #006400;
	/* Cambiar la sombra del bot�n*/
	box-shadow: -5px -5px #006400 inset;
	/* Transici�n suave entre los estilos*/
	transition: all .3s ease;
}

/* Estilo del bot�n al hacer click sobre �l*/
input[type="button"]:active {
	/* Cambiar el color del fondo del bot�n*/
	background: #006400;
	/* Cambiar el color del texto del bot�n*/
	color: #90ee90;
	/* Cambiar la sombra del bot�n*/
	box-shadow: 5px 5px #90ee90 inset;
	/* Transici�n suave entre los estilos*/
	transition: all .3s ease;
}

/* Definir la animaci�n del t�tulo */
@
keyframes bounce {
	/* Inicio de la animaci�n */ 0% {
	/* Transformar el texto para que se mueva hacia arriba */
	transform: translateY(-10px);
}
/* Mitad de la animaci�n */
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
/* Fin de la animaci�n */
100


%
{ /* Transformar el texto para que vuelva a su posici�n original */
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
				<h1>Confirmaci�n de Compra</h1>
			</td>
		</tr>
	</table>
	<div class="container">
		Se�or Usuario: <b><%=nom%></b> <b><%=apellido%></b> <br> Su
		compra fue realizada satisfactoriamente por un valor de <b>: $<%=combi%></b>.
		Correspondiente a <b><%=canti%></b> <b><%=artic%></b> <br> <br>
		El precio por unidad fue de <b>: $ <%=preciu%></b> <br> La compra
		fue realizada con la tarjeta de cr�dito: <b><%=numt%></b> de la
		franquicia <b><%=tarj%></b>. Fecha de la compra: <b><%=fecha%></b> <br>
		<br> Desde la Direcci�n IP: <b><%=ip%></b> <br> <br>
	</div>
	<br>
	<br>
	<center>
		<button onclick="window.location.href='index.jsp'">Volver...</button>
	</center>
</body>
</html>
