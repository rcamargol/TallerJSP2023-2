<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function valida_envia(form) {
		if (form.articulos.value == "0") {
			
			alert(" Seleccione articulo");
			form.articulos.focus();
			return;
		}
		if (form.cantidad.value == "") {
			alert("debe ingresar la cantidad");
			form.cantidad.focus();
		}
		if (form.precio.value == "") {
			alert("debe ingresar el precio por unidad");
			form.precio.focus();
		}
		if (form.nombreCliente.value == "") {
			alert("debe ingresar el nombre");
			form.cantidad.focus();
		}
		if (form.ApellidosCliente.value == "") {
			alert("debe ingresar los apellidos");
			form.cantidad.focus();
		}
		if (form.cantidad.value == "") {
			alert("debe ingresar la cantidad");
			form.cantidad.focus();
		}
		if (document.getElementById('rbFranquicia').checked==false) {
			alert("No has seleccionado la opcion de tipo de tarjeta");
		}else{
			alert( "seleccionado la opcion de tipo de tarjeta" + form.franquicia.value);
		}
		
		if (form.TarjetaCredito.value == "") {
			alert("debe ingresar el nombre");
			form.TarjetaCredito.focus();
		}
		if (form.confirmar.value == "") {
			alert("debe ingresar el nombre");
			form.confirmar.focus();
		}
		form.submit();
	}
</script>
</head>
<body>
	<center>Tienda</center>
	<form action="CarritoCompras" method="post">
		<table align="center">
			<tr>
				<td>articulos</td>
				<td><select name="articulos">
						<option value="0">seleccione..</option>
						<option value="1">Zapatos</option>
						<option value="2">Camisa</option>
						<option value="3">Reloj</option>
						<option value="4">Libro.</option>
						<option value="5">computador</option>
				</select></td>
			</tr>
			<tr>
				<td>cantidad:</td>
				<td><input type="text" name="cantidad" value="" size="10" /></td>
			</tr>
			<tr>
				<td>precio por unidad:</td>
				<td><input type="text" name="precio" value="" size="10" /></td>
			</tr>
			<tr>
				<td>nombres del cliente:</td>
				<td><input type="text" name="nombreCliente" value="" size="10" /></td>
			</tr>
			<tr>
				<td>Apellidos del cliente:</td>
				<td><input type="text" name="ApellidosCliente" value=""
					size="10" /></td>
			</tr>
			
			<fielset id="rbFranquicia">
			<tr>
				<td><input type="radio"  name="franquicia" value="visa">Visa</td>
			</tr>
			<tr>
				<td><input type="radio" name="franquicia"value="mastercard">MasterCard<br></td>
			</tr>
			<tr>
				<td><input type="radio" name="franquicia" value="americanexpress">AmericanExpress<br></td>
			</tr>
			</fielset>
			<tr>
				<td>numero Tarjeta Credito:</td>
				<td><input type="text" name="TarjetaCredito" value="" size="40" /></td>
			</tr>
			<tr>
				<td>confirmar numero de tarjeta de credito:</td>
				<td><input type="text" name="confirmar" value="" size="10" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="confirmar compra"
					onClick="valida_envia(this.form)" /></td>
			</tr>
		</table>


	</form>
</body>
</html>