<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
	background-color: lightblue;
	color: blue;
}
h1{
	color: darkblue;
}
input{
	background-color: darkblue;
	color: white;
}
select{
	background-color: darkblue;
	color: white;
}
</style>
<meta charset="ISO-8859-1">
<title>Compra Virtual de Producto</title>
<script language="JavaScript">
var noPermitido = /[a-zA-Z]/;

function valida_envio(form){
	if(form.producto.value=="0"){
		alert("Porfavor seleccione el producto que desea adquirir")
		form.nombres.focus;
		return;
	}
	if(form.cantidad.value<=0){
		alert("La cantidad del producto debe ser mayor a 0.")
		form.nombres.focus;
		return;
	}
	if(form.nombres.value==""){
		alert("El campo de nombres debe estar diligenciado con su nombre")
		form.nombres.focus;
		return;
	}
	if(form.apellido.value==""){
		alert("El campo de apellidos debe estar diligenciado con su apellido")
		form.nombres.focus;
		return;
	}
	if(noPermitido.test(form.precio.value)){
		alert("La información ingresada en el campo de precio debe ser un número.")
		form.precio.focus;
		return;
	}
	if(form.precio.value==""){
		alert("El campo de precio debe estar diligenciado con el precio por unidad del producto que desea comprar.")
		form.precio.focus;
		return;
	}
	if(parseInt(form.precio.value)<0){
		alert("El precio del producto no puede ser negativo")
		form.precio.focus;
		return;
	}
	if(form.numTarjeta.value==""){
		alert("Ponga el número de la tarjeta de crédito en el espacio correspondiente de la compra.")
		form.numTarjeta.focus;
		return;
	}
	if(form.numTarjeta.value.split(' ').length!=4){
		alert("Debe ingresar el número de la tarjeta separando cada cuatro valores con un espacio. Ejemplo: 4562 4562 4562 4562")
		form.numTarjeta.focus;
		return;
	}
	if(form.numTarjeta.value.length!=19){
		alert("Debe ingresar el número de la tarjeta de forma correcta")
		form.numTarjeta.focus;
		return;
	}
	if(noPermitido.test(form.numTarjeta.value)){
		alert("Debe ingresar el número de la tarjeta de forma correcta")
		form.numTarjeta.focus;
		return;
	}
	if(form.confirmNumTarjeta.value!=form.numTarjeta.value){
		alert("Debe ingresar el mismo número de la tarjeta en ambos campos")
		form.numTarjeta.focus;
		return;
	}
	form.submit();
}
</script>
</head>
<body>
	<center><h1>COMPRA DE PRODUCTOS</h1></center>
<form action="RedirectServlet" method="get">
	<table align="center">
		<tr><td>Art&iacute;culo: </td><td><select name ="producto">
		<option value="0"> Seleccione...</option>
		<option value="1"> Zapatos</option>
		<option value="2"> Camisa</option>
		<option value="3"> Reloj</option>
		<option value="4"> Libro</option>
		<option value="5"> Computador</option>
		</select></td></tr>
		<tr><td>Cantidad: </td> <td><input type="number" name="cantidad" value="1" min="1" size="20"></td></tr>
		<tr><td>Precio c/u: </td> <td><input type="text" name="precio" value="" size="20"></td></tr>
		<tr><td>Nombres: </td><td> <input type="text" name="nombres" value="" size="40"></td></tr>
		<tr><td>Apellidos: </td> <td><input type="text" name="apellido" value="" size="40"></td></tr>
		<tr><td>Tarjeta de cr&eacute;dito: </td><td><input type="radio" name="tarjetaCredito" value="VISA" checked> Visa <input type="radio" name="tarjetaCredito" value="MASTERCARD"> MasterCard <input type="radio" name="tarjetaCredito" value="AMERICANEXPRESS"> AmericanExpress</td></tr>
		<tr><td>N&uacute;mero tarjeta de cr&eacute;dito: </td><td><input type="tel" name="numTarjeta" value="" pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}" size="40"></td></tr>
		<tr><td>Confirmar n&uacute;mero tarjeta de cr&eacute;dito: </td><td><input type="tel" name="confirmNumTarjeta" value="" pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}" size="40"></td></tr>
		<tr><td colspan="2"><input type="button" value ="ACEPTAR" onClick="valida_envio(this.form)"></td></tr>
	</table>
</form>
</body>
</html>