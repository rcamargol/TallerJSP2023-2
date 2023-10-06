<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>Formulario de Compra</title>

<script language="JavaScript">
	function validacion(form) {
		if (form.articulo.value == "0") {
			alert("Debe seleccionar un producto de la lista");
			form.articulo.focus();
			return;
		}
		if (form.cantidad.value == "") {
			alert("Debe ingresar la cantidad");
			form.cantidad.focus();
			return;
		}
		if (form.precio.value == "") {
			alert("Debe ingresar el precio de la unidad del artículo");
			form.precio.focus();
			return;
		}
		if (form.nombre.value == "") {
			alert("Debe ingresar el nombre del cliente");
			form.nombre.focus();
			return;
		}
		if (form.apellido.value == "") {
			alert("Debe ingresar el apellido del cliente");
			form.apellido.focus();
			return;
		}
		if (form.tarjeta.value == "") {
			alert("Debe elegir una tarjeta");
			form.tarjeta.focus();
			return;
		}
		if (form.numeroTarjeta.value == "") {
			alert("Debe ingresar el número de la tarjeta");
			form.numeroTarjeta.focus();
			return;
		}
		if (form.numeroTarjeta.value.length != 16) {
			alert("Hay que ingresar los 16 numeros de la tarjeta");
			form.numeroTarjeta.focus();
			return;
		}
		if (form.confirmarTarjeta.value == "") {
			alert("Por favor confirme el número de la tarjeta");
			form.confirmarTarjeta.focus();
			return;
		}
		if (form.confirmarTarjeta.value.length != 16) {
			alert("Hay que ingresar los 16 numeros de la tarjeta");
			form.numeroTarjeta.focus();
			return;
		}
		if (form.confirmarTarjeta.value != form.numeroTarjeta.value) {
			alert("Los números de tarjeta son diferentes");
			form.confirmarTarjeta.focus();
			return;
		}

		form.submit();

	}
</script>
</head>
<body>
	<center>
		<br>
		<h1>**BIENVENIDO**</h1>
		<h1>Porfavor registre el siguiente formulario para hacer su compra</h1>
	</center>

	<form action="DemoServlet" method="post">

		<table align="center">

			<tr>
				<td>Art&iacute;culo:</td>
				<td><select name="articulo">
						<option value="0">Seleccione el art&iacute;culo</option>
						<option value="1">Camisa</option>
						<option value="2">Libro</option>
						<option value="3">Computador</option>
						<option value="4">Zapato</option>
						<option value="5">Reloj</option>
				</select></td>
			</tr>
			<tr>
				<td>Cantidad:</td>
				<td><input type="text" name="cantidad" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Precio por unidad:</td>
				<td><input type="text" name="precio" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Nombres del cliente:</td>
				<td><input type="text" name="nombre" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Apellidos del cliente:</td>
				<td><input type="text" name="apellido" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Tarjerta de cr&eacute;dito:</td>
				<td>Visa <input type="radio" name="tarjeta" value="Visa">
					Master Card <input type="radio" name="tarjeta" value="Master Card">
					American Express <input type="radio" name="tarjeta"
					value="American Express">
			</tr>
			<tr>
				<td>N&uacute;mero de tarjeta:</td>
				<td><input type="text" name="numeroTarjeta" value="" size="40" /></td>
			</tr>

			<tr>
				<td>Confirmar n&uacute;mero de tarjeta:</td>
				<td><input type="text" name="confirmarTarjeta" value=""
					size="40" /></td>
			</tr>

			<tr>
				<td><br> <input type="button" value="CONFIRMAR COMPRA"
					onclick="validacion(this.form)" /></td>
			</tr>

		</table>

	</form>

</body>

</html>