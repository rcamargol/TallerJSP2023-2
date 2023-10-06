<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<title>Registro de Compras</title>

<script language="javascript">
	function valid(form) {
		if (form.cantidad.value == "") {
			alert("Por favor ingresa la cantidad");
			form.cantidad.focus();
			return;
		}
		if (form.precioUnitario.value == "") {
			alert("Por favor ingresa el precio unitario");
			form.precioUnitario.focus();
			return;
		}
		if (form.nombre.value == "") {
			alert("Por favor ingresa los nombres del cliente");
			form.nombre.focus();
			return;
		}
		if (form.apellido.value == "") {
			alert("Por favor ingresa los apellidos del cliente");
			form.apellido.focus();
			return;
		}
		if (form.tarjeta.value == "") {
			alert("Por favor ingresa el tipo de tarjeta");
			form.tarjeta.focus();
			return;
		}
		if (form.numeroTarjeta.value == "") {
			alert("Por favor ingresa el numero de la tarjeta");
			form.numeroTarjeta.focus();
			return;
		}
		if (form.confirmarNumeroTarjeta.value == "") {
			alert("Por favor confirma el numero de la tarjeta");
			form.confirmarNumeroTarjeta.focus();
			return;
		}
		if (!(form.confirmarNumeroTarjeta.value == form.numeroTarjeta.value)) {
			alert("Los numeros de trajeta no coinciden");
			form.confirmarNumeroTarjeta.focus();
			return;
		}	
		if ((form.confirmarNumeroTarjeta.value.length <12) || (form.numeroTarjeta.value.length <12)) {
			alert("El numero de la tajeta debe tener 12 cifras");
			form.NumeroTarjeta.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<style>
body {
	background: #00BCEA
}
</style>
<body>

	<h2>Registro de Compras</h2>
	<br>
	<hr>
	<br>

	<form action="Factura" method="post">

		Artículo:<select name="articulo">

			<option value="zapato">Zapato</option>

			<option value="camisa">Camisa</option>

			<option value="reloj">Reloj</option>

			<option value="libro">Libro</option>

			<option value="computador">Computador</option>

		</select><br>
		<br> Cantidad:<input type="number" name="cantidad" size="20"><br>
		<br> Precio por unidad: <input type="number" name="precioUnitario"
			size="20"><br>
		<br> Nombres del cliente: <input type="text" name="nombre"
			size="40"><br>
		<br> Apellidos del cliente: <input type="text" name="apellido"
			size="40"><br>
		<br> Tarjeta de crédito:<br> <input type="radio"
			name="tarjeta" value="VISA"> Visa<br> <input
			type="radio" name="tarjeta" value="MasterCard"> MasterCard<br>

		<input type="radio" name="tarjeta" value="American Express">
		American Express<br>
		<br> Número de tarjeta de crédito: <input type="number"
			name="numeroTarjeta" size="40"><br>
		<br> Confirmar número de tarjeta de crédito: <input type="number"
			name="confirmarNumeroTarjeta" size="40"><br>
		<br>

		<td><input type="button" value="CONFIRMAR COMPRA"
			onClick="valid(this.form)" /></td>
	</form>
</body>
</html>