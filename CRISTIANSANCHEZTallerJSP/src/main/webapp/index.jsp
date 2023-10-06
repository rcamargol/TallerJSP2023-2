<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="color: White; background-color: Black">
<head>
<meta charset="UTF-8">
<title>TallerJSP</title>

<script language="JavaScript">
	function valida_envia(form) {
		if (form.articulo.value == "0") {
			alert("Debe ingresar un Articulo");
			form.articulo.focus();
			return;
		}
		if (form.cantidad.value == "") {
			alert("Debe ingresar una cantidad de articulos");
			form.cantidad.focus();
			return;
		}
		
		if (form.cantidad.value <= 0) {
			alert("Debe ingresar una cantidad de articulos que sea real");
			form.cantidad.focus();
			return;
		}
		if (form.precio.value == "") {
			alert("Debe ingresar un precio");
			form.precio.focus();
			return;
		}
		
		if (form.precio.value <= 0) {
			alert("Debe ingresar un precio que sea real");
			form.precio.focus();
			return;
		}
		if (form.nombre.value == "") {
			alert("Debe ingresar un nombre");
			form.nombre.focus();
			return;
		}
		if (form.apellido.value == "") {
			alert("Debe ingresar un apellido");
			form.apellido.focus();
			return;
		}
		if (form.tarjeta.value == "") {
			alert("Debe ingresar una tarjeta");
			form.tarjeta.focus();
			return;
		}

		if (form.numtarjeta.value == "") {
			alert("Debe ingresar un Numero de Tarjeta de Credito");
			form.numtarjeta.focus();
			return;
		}
		if (form.numtarjeta.value <= 0) {
			alert("Debe ingresar un Numero de Tarjeta de Credito que exista");
			form.numtarjeta.focus();
			return;
		}
		if (form.numtarjeta.value.length != 16) {
			alert("Debe ingresar un Numero en Num Tarjeta de Credito Valido");
			form.numtarjeta.focus();
			return;
		}
		if (form.confirmar.value != form.numtarjeta.value) {
			alert("Debe ingresar el mismo Numero de Tarjeta");
			form.confirmar.focus();
			return;
		}
		form.submit();
	}
</script>

</head>
<body background="black">

	<form action="Servlet" method="post">

		<center style="height: 114px;">
			<h1>Registro de compras</h1>
		</center>
		
		<table align="center">
			<tr>
				<td>Articulo:</td>
				<td><select name="articulo">
						<option value="0">:: Seleccione ::</option>
						<option value="zapatos">Zapatos</option>
						<option value="camisa">Camisa</option>
						<option value="reloj">Reloj</option>
						<option value="libre">Libro</option>
						<option value="computador">Computador</option>
				</select></td>
			</tr>
			<tr>
				<td>Cantidad:</td>
				<td><input type="number" name="cantidad" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Precio Und:</td>
				<td><input type="number" name="precio" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Nombres:</td>
				<td><input type="text" name="nombre" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Apellidos:</td>
				<td><input type="text" name="apellido" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Tarjeta de credito:</td>
				<td><input type="radio" name="tarjeta" value="Visa">Visa
					<input type="radio" name="tarjeta" value="MasterCard">MasterCard
					<input type="radio" name="tarjeta" value="AmericanExpress">American
					Express</td>
			</tr>
			<tr>
				<td>Num tarjeta de credito:</td>
				<td><input type="number" name="numtarjeta" value="" size="40" /></td>
			</tr>
			<tr>

				<td>Confirmacion de Num:</td>
				<td><input type="number" name="confirmar" value="" size="40" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="Confirmar Compra"
					onClick="valida_envia(this.form)" style="width: 215px;" /></td>
			</tr>
		</table>
	</form>
</body>
</html>