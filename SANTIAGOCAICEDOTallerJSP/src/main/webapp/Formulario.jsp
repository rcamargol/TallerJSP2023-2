<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page session="true"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ACTIVIDAD</title>

<script language="JavaScript">
	function valida_envia(form) {
		if (form.articulo.value == "0") {
			alert("Tiene que escoger un articulo...");
			form.articulo.focus();
			return;
		}
		if (form.Cantidad.value == "") {
			alert("Debe ingresar la cantidad....");
			form.Cantidad.focus();
			return;
		}
		if (form.Precio.value == "") {
			alert("Tiene que ingresar el Precio....");
			form.Precio.focus();
			return;
		}
		if (form.nombre.value == "") {
			alert("Debe ingresar su nombre...");
			form.nombre.focus();
			return;
		}
		if (form.apellido.value == "") {
			alert("Debe ingresar su apellido...");
			form.apellido.focus();
			return;
		}
		if (form.boton1.value == "") {
			alert("Debe ingresar que tarjeta utiliza...");
			form.boton1.focus();
			return;
		}
		if (form.Numero1.value.length !== 16) {
			alert("El numero de tarjeta debe tener exactamente 16 digitos");
			form.num1.focus();
			return;
		}
		if (form.Numero1.value == "") {
			alert("Ingrese el numero de la tarjeta...");
			form.Numero1.focus();
			return;
		}
		if (form.Numero2.value != form.Numero1.value) {
			alert("Numero erroneo con la tajeta...");
			form.Numero2.focus();
			return;
		}
		form.submit();
	}
</script>
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
	<center>
		<h1>formulario de entrada</h1>
	</center>
	<form action="Respuesta.jsp" method="post">
		<table align="center">
			<tr>
				<td>Articulo</td>
				<td><select name="articulo">
						<option value="0">::Seleccione ::</option>
						<option value="Zapatos">Zapatos</option>
						<option value="Camisas">Camisa</option>
						<option value="Relojes">Reloj</option>
						<option value="Libros">Libro</option>
						<option value="Computadores">Computador</option>
				</select></td>
			</tr>
			<tr>
				<td>Cantidad</td>
				<td><input type="number" name="Cantidad" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Precio por Unidad</td>
				<td><input type="number" name="Precio" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="nombre" value="" size="40" /></td>
			</tr>

			<tr>
				<td>Apellido</td>
				<td><input type="text" name="apellido" value="" size="40" /></td>
			</tr>


			<tr>
				<td>Tarjeta De Credito:</td>
				<td><input type="radio" name="boton1" value="Visa">
					Visa</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="radio" name="boton1" value="MasterCard">
					MasterCard</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="radio" name="boton1" value="American Express">
					American Express</td>
			</tr>
			<tr>
				<td>Numero Tajeta Credito</td>
				<td><input type="number" name="Numero1" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Confirma Tarjeta Credito</td>
				<td><input type="number" name="Numero2" value="" size="40" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="ACEPTAR"
					onClick="valida_envia(this.form)" /></td>
			</tr>
		</table>


	</form>
</body>
</html>