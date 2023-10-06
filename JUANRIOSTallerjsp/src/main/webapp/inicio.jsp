
<%@page import="java.lang.foreign.Linker.Option"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
<meta charset="UTF-8">
<title>Carrefour Colombia</title>
<script type="text/javascript">
	function valida_envia2(form){
		form.submit();
	}
	function valida_envia(form) {
		if (form.cantidad == "") {
			alert("No ha seleccionado ninguna cantidad del producto.");
			form.cantidad.focus();
			return;
		}
		if (form.Articulo == "") {
			alert("No ha seleccionado ningun articulo disponible");
			form.Articulo.focus();
			return;
		}
		if (form.cliente == "") {
			alert("No ha seleccionado ninguna cantidad del producto.");
			form.cliente.focus();
			return;
		}
		if (form.precio == "") {
			alert("No ha seleccionado ningun articulo disponible");
			form.precio.focus();
			return;
		}
		if (form.numero !== form.numero2) {
			alert("El numero de tarjeta no coincide");
			form.numero.focus();
			return;
		}
		form.submit();
	}
</script>
<h1>
	<center>Registro de Compras</center>
</h1>
<form action="respuesta.jsp" method="post">
	<table align="center" border=1>
		<tr>
			<td>Articulo:</td>
			<td><select name="Articulo">
					<option value=0></option>
					<option value=zapatos>Zapatos</option>
					<option value=Camisa>Camisa</option>
					<option value=Reloj>Reloj</option>
					<option value=Libros>Libros</option>
					<option value=Computador>Computador</option>
			</select></td>
		<tr>
			<td>Cantidad:</td>
			<td><input type=text name="cantidad" value="" size="20" /></td>
		</tr>
		<tr>
			<td>Precio por unidad:</td>
			<td><input type=text name="precio" value="" size="20" /></td>
		</tr>
		<tr>
			<td>Nombre del cliente:</td>
			<td><input type=text name="cliente" value="" size="40" /></td>
		</tr>
		<tr>
			<td>Apellidos del cliente:</td>
			<td><input type=text name="apellido" value="" size="40" /></td>
		</tr>
		<tr>
			<td>Tarjeta de credito:</td>
			<td><input type="radio" name="tarjeta de credito" value="Visa">
				Visa <input type="radio" name="tarjeta de credito" value="Master">
				Master Card <input type="radio" name="tarjeta de credito"
				value="American"> American Airlines</td>
		</tr>
		<tr>
			<td>Numero de tarjeta de credito:</td>
			<td><input type=textarea name="numero" value="xxxx-xxxx-xxxx-xxxx" size="40" /></td>

		</tr>
		<tr>
			<td>Confirmar Numero de tarjeta de credito:</td>
			<td><input type=textarea name="numero2" value="xxxx-xxxx-xxxx-xxxx" size="40" /></td>
		</tr>
		<tr>
			<td><input type="button" value="Confirmar Compra"
				onclick="valida_envia2(this.form)" /></td>
		</tr>
	</table>

</form>

<body>

</body>
</html>