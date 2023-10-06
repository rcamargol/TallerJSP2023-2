<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lavadero-de-Plata</title>
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

/* Estilo de la tabla */
table {
	/* Ancho de la tabla */
	width: 80%;
	/* Margen de la tabla */
	margin: 20px auto;
	/* Borde de la tabla */
	border: 5px solid #fff;
	/* Radio del borde de la tabla */
	border-radius: 20px;
	/* Sombra de la tabla */
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
}

/* Estilo de las celdas de la tabla */
td {
	/* Color del texto */
	color: #fff;
	/* Tamaño del texto */
	font-size: 24px;
	/* Alineación del texto */
	text-align: center;
}

/* Estilo de los inputs de texto y select */
input[type="text"], select {
	/* Ancho del input o select */
	width: 80%;
	/* Altura del input o select */
	height: 40px;
	/* Color del fondo del input o select*/
	background: #f0f0f0;
	/* Color del texto del input o select*/
	color: #808080;
	/* Tamaño del texto del input o select*/
	font-size: 24px;
	/* Borde del input o select*/
	border: 2px solid #fff;
	/* Radio del borde del input o select*/
	border-radius: 10px;
	/* Sombra del input o select*/
	box-shadow: -2px -2px #808080 inset;
	/* Eliminar el borde azul al seleccionar el elemento*/
	outline: none;
}

/* Estilo de los inputs de texto y select */
input[type="number"], select {
	/* Ancho del input o select */
	width: 80%;
	/* Altura del input o select */
	height: 40px;
	/* Color del fondo del input o select*/
	background: #f0f0f0;
	/* Color del texto del input o select*/
	color: #808080;
	/* Tamaño del texto del input o select*/
	font-size: 24px;
	/* Borde del input o select*/
	border: 2px solid #fff;
	/* Radio del borde del input o select*/
	border-radius: 10px;
	/* Sombra del input o select*/
	box-shadow: -2px -2px #808080 inset;
	/* Eliminar el borde azul al seleccionar el elemento*/
	outline: none;
}

/* Estilo de los inputs de radio */
input[type="radio"] {
	/* Tamaño del input */
	transform: scale(2);
}

/* Estilo de los labels de los inputs de radio */
label {
	/* Color del texto */
	color: #fff;
}

/* Estilo del botón */
input[type="button"] {
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
	/* Borde del botón */
	border: none;
	/* Radio del borde del botón */
	border-radius: 25px;
	/* Sombra del botón */
	box-shadow: 0px -5px #CDCCCC inset;
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
	<script type="text/javascript">
		function confirm(form) {

			if (form.artic.value == "0") {
				alert("Seleecione un articulo");
				form.artic.focus();
				return;
			}
			if (form.canti.value == "") {
				alert("Ingrese la cantidad de productos a comprar");
				form.canti.focus();
				return;
			}
			if (form.preciu.value == "") {
				alert("Ingrese el costo del los productos");
				form.preciu.focus();
				return;
			}
			if (form.canti.value <= 1) {
				alert("Ingrese la cantidad debe de ser mayor a 1");
				form.canti.focus();
				return;
			}
			if (form.preciu.value <= 1) {
				alert("Ingrese el costo del los productos debe de ser mayor a 1");
				form.preciu.focus();
				return;
			}
			if (form.nom.value == "") {
				alert("Ingrese su Nombre");
				form.nom.focus();
				return;
			}
			if (form.apeli.value == "") {
				alert("Ingrese su Apellido");
				form.apeli.focus();
				return;
			}

			if (form.numt.value == "") {
				alert("Ingrese su tarjeta");
				form.numt.focus();
				return;
			}
			if (form.numt.value < 0) {
				alert("Su tarjeta debe de ser una tarjeta real");
				form.numt.focus();
				return;
			}
			if (form.numtCon.value == "") {
				alert("Confirme su tarjeta");
				form.numtCon.focus();
				return;
			}
			if (form.numt.value.length !== 16) {
				alert("su tarjeta no cuenta con la cantidad de digitos requeridos");
				form.numt.focus();
				return;
			}
			if (form.numtCon.value.length !== 16) {
				alert("su tarjeta no cuenta con la cantidad de digitos requeridos");
				form.numtCon.focus();
				return;
			}
			if (form.numtCon.value != form.numt.value) {
				alert("Tu tarjeta y su confirmacion no son coinciden");
				form.numtCon.focus();
				return;
			}
			form.submit();

		}
	</script>
</head>
<body>
	<center>
		<h1>Amazon, el propio (la mala para panamericana)</h1>
	</center>
	<div>
		<form action="Servleteichon" method="post">
			<table align="center">
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td>.:Articulo:.</td>
					<td><select name="artic">
							<option value="0">Elija una opcion</option>
							<option value="zapatos">Zapatos</option>
							<option value="camisa">Camisa</option>
							<option value="reloj">Reloj</option>
							<option value="libro">Libro</option>
							<option value="computador">Computador</option>
					</select></td>
				</tr>
				<tr>
					<td>.:Cantidad:.</td>
					<td><input type="number" name="canti" value="" size="20" /></td>
				</tr>
				<tr>
					<td>.:Precio Unitario:.</td>
					<td><input type="number" name="preciu" value="" size="20" /></td>
				</tr>

				<tr>
					<td>.:Nombres:.</td>
					<td><input type="text" name="nom" value="" size="40" /></td>
				</tr>

				<tr>
					<td>.:Apellidos:.</td>
					<td><input type="text" name="apeli" value="" size="40" /></td>
				</tr>

				<tr>
					<td>.:Tarjeta:.</td>
					<td><input type="radio" id="visa" name="tarj" value="VISA"
						checked> <label for="visa">Visa</label> <input
						type="radio" id="master" name="tarj" value="MasterCard"> <label
						for="master">MasterCard</label> <input type="radio" id="american"
						name="tarj" value="AmericanExpress"> <label for="american">AmericanExpress</label></td>
				</tr>

				<tr>
					<td>.:Numero de tarjeta:.</td>
					<td><input type="number" name="numt" value="" size="40" /></td>
				</tr>

				<tr>
					<td>.:Confirme su numero de tarjeta:.</td>
					<td><input type="number" name="numtCon" value="" size="40" /></td>
				</tr>
			<tr>
				<td><br></td>
			</tr>
			</table>
			<br>
			<center>
				<input type="button" value="CONFIRMAR" onClick="confirm(this.form)" />
			</center>
		</form>
	</div>
</body>
</html>
</body>
</html>