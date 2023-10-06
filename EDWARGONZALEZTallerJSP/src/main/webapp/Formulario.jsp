<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Compras</title>
<link rel="icon" href="https://yt3.googleusercontent.com/ytc/AOPolaT1y60F13vXDJD8byvVR8zLeMeAwvvGfnc1vnnO=s900-c-k-c0x00ffffff-no-rj" type="image/png">
<style>
body {
	background-image:
		url('https://exitocol.vtexassets.com/assets/vtex.file-manager-graphql/images/0aa571d4-e630-4254-9cb7-497e19ef1525___2030887f76b04133a603327efe451693.jpg');
	background-size: cover;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

table {
	text-align: center;
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
}
}
</style>
<script language="JavaScript">
	function valida_envia(form) {
		if (form.articulo.value == "0") {
			alert("Debe seleccionar un articulo");
			form.articulo.focus();
			return;

		}
		if (form.cantidad.value == "") {
			alert("Debe ingresar la cantidad");
			form.cantidad.focus();
			return;
		}
		if (form.precio.value == "") {
			alert("Debe ingresar un precio");
			form.precio.focus();
			return;
		}
		if (form.nombre.value == "") {
			alert("Debe ingresar su nombre");
			form.nombre.focus();
			return;
		}
		if (form.apellido.value == "") {
			alert("Debe ingresar su apellido");
			form.apellido.focus();
			return;
		}

		if (form.boton1.value == "") {
			alert("Debe ingresar una tarjeta");
			form.boton1.focus();
			return;
		}
		var num1Value = form.num1.value.trim();
		if (num1Value == "") {
			alert("Debe ingresar su tarjeta");
			form.num1.focus();
			return;
		}

		var num2Value = form.num2.value.trim();
		if (num2Value == "") {
			alert("Debe ingresar la confirmacion de su tarjeta");
			form.num2.focus();
			return;
		}
		if (form.num2.value != form.num1.value) {
			alert("Las tarjetas no son iguales");
			form.num2.focus();
			return;

		}
		if (form.num1.value.length !== 16) {
			alert("El numero de tarjeta debe tener exactamente 16 dígitos");
			form.num1.focus();
			return;

		}
		var cantidadValue = form.cantidad.value;
		if (cantidadValue.includes(".") || cantidadValue.includes(",")
				|| cantidadValue < 0) {
			alert("La cantidad no puede contener decimales ni ser negativa.");
			form.cantidad.focus();
			return;
		}
		var precioValue = form.precio.value;
		if (precioValue.includes(".") || precioValue.includes(",")
				|| precioValue < 0) {
			alert("El precio no puede contener decimales ni ser negativo.");
			form.precio.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>

	<center>

		<form action="Respuesta.jsp" method="post">
			<table align="center">
				<tr>
					<td><h1>REGISTRO DE COMPRAS</h1></td>
				</tr>

				<tr>
					<td>Art&iacute;culo</td>
					<td><select name="articulo">
							<option value="0">::Seleccione::</option>
							<option value="Zapatos">Zapatos</option>
							<option value="Camisas">Camisas</option>
							<option value="Relojs">Relojes</option>
							<option value="Libros">Libros</option>
							<option value="Computadores">Computadores</option>

					</select></td>
				</tr>
				<tr>
					<td>Cantidad:</td>
					<td><input type="number" name="cantidad" value="" size="20" /></td>
				</tr>
				<tr>
					<td>Precio por Unidad:</td>
					<td><input type="number" name="precio" value="" size="20" /></td>
				</tr>
				<tr>
					<td>Nombre del Cliente:</td>
					<td><input type="text" name="nombre" value="" size="40" /></td>
				</tr>
				<tr>
					<td>Apellido del Cliente:</td>
					<td><input type="text" name="apellido" value="" size="40" /></td>
				</tr>
				<tr>
					<td>Tarjeta De Crédito:</td>
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
				<tr>
					<td>Numero de tarjeta de crédito:</td>
					<td><input type="text" id="numero1" name="num1" title=""
						required oninput="validarNumero(this)" style="width: 294px;">
						<script>
							function validarNumero(input) {

								input.value = input.value
										.replace(/[^0-9]/g, '');
							}
						</script></td>
				</tr>
				<tr>
					<td>Confirmar Numero de tarjeta de crédito:</td>
					<td><input type="text" id="numero2" name="num2" title=""
						required oninput="validarNumero(this)" style="width: 294px;">
						<script>
							function validarNumero(input) {

								input.value = input.value
										.replace(/[^0-9]/g, '');
							}
						</script></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="CONFIRMAR COMPRA"
						onclick="valida_envia(this.form)" /></td>
				</tr>
				</center>
</body>
</html>