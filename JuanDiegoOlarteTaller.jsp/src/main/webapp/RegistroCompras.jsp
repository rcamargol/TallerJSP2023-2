<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page session="true"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ACTIVIDAD - 1</title>
<script language="JavaScript">
	function valida_envia(form) {

		if (form.Articulos.value == "Seleccionar") {
			alert("Debe seleccionar el articulo");
			form.Articulos.focus();
			return;
		}

		if (form.Cantidad.value == "") {
			alert("Debe ingresar la cantidad...");
			form.Cantidad.focus();
			return;
		}

		if (form.Precio.value == "") {
			alert("Debe ingresar el precio...");
			form.Precio.focus();
			return;
		}

		if (form.Nombre.value == "") {
			alert("Debe ingresar su nombre...");
			form.Nombre.focus();
			return;
		}

		if (form.Apellido.value == "") {
			alert("Debe ingresar su apellido...");
			form.Apellido.focus();
			retur;
		}

		if (form.boton1.value == "") {
			alert("Debe seleccionar una tarjeta de credito...");
			form.boton1.focus();
			return;
		}

		if (form.Numero1.value == "") {
			alert("Debe ingresar el numero de tarjeta...");
			form.Numero1.focus();
			return;
		}
	
		if (form.Numero1.value != form.Numero1.value) {
			alert("El número de tarjeta debe tener exactamente 16 dígitos...");
			form.Numero1.focus();
			return;
		}
		if (form.Numero2.value.length !== 16) {
			alert("Por favor Confirme su numero de tarjeta...");
			form.Numero2.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
<body background="Fondo3.jpg">
	<font face="Castellar"> <font color="#FFFFFF"><center>
				<h1>formulario de compra</h1>
			</center>
			<form action="Valores.jsp" method="post">
				<table align="center">

					<td>Articulos</td>
					<td><select name="Articulos" value="">
							<option value="Seleccionar">Seleccione</option>
							<option value="Zapatos">Zapatos</option>
							<option value="Camisa">Camisa</option>
							<option value="Reloj">Reloj</option>
							<option value="Libro">Libro</option>
							<option value="Computador">Computador</option>
					</select>
					</td>
					<tr>
						<td>Cantidad</td>
						<td><input type="number" name="Cantidad" value="" size="20" /></td>
					</tr>
					<tr>
						<td>Precio por unidad</td>
						<td><input type="number" name="Precio" value="" size="20" /></td>
					</tr>
					<tr>
						<td>Nombres del Cliente</td>
						<td><input type="text" name="Nombre" value="" size="40" /></td>
					</tr>
					<tr>
						<td>Apellido del Cliente</td>
						<td><input type="text" name="Apellido" value="" size="40" /></td>
					</tr>
					<tr>
						<td>Tarjeta De Crédito:</td>
						<td><input type="radio" name="boton1" value="Visa"> 
							Visa</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="radio" name="boton1" value="Mastercard">
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

				</table></font>
	</font>
	</form>
</body>
</html>