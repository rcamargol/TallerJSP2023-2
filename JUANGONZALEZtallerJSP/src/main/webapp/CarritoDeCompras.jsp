<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page session="true" %>

<html>
<head>
<style>
body{
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
<title>compras en linea mercado libre</title>

<script lenguage="JavaScript">

function valida_datos(form){
	
	
	
	if(form.prod.value=="0"){
		alert("Debe seleccionar el articulo que desea....");
		form.prod.focus();
		return;
	}
	if(form.cantidad.value==""){
		alert("Debe ingresar la cantidad de productos que desea....");
		form.cantidad.focus();
		return;
	}
	if(form.cantidad.value<1){
		alert("Debe ingresar una cantidad no negativa y distinta de cero....");
		form.cantidad.focus();
		return;
	}
	if(form.precio.value==""){
		alert("Debe el precio del producto....");
		form.precio.focus();
		return;
	}
	if(form.precio.value<1){
		alert("El precio del producto debe ser igual o mayor a 1....");
		form.precio.focus();
		return;
	}
	if(form.nombrec.value==""){
		alert("Debe ingresar su nombre....");
		form.nombrec.focus();
		return;
	}
	if(form.apellidoc.value==""){
		alert("Debe ingresar su apellido....");
		form.apellidoc.focus();
		return;
	}
	if(form.apellidoc.value==""){
		alert("Debe ingresar su apellido....");
		form.apellidoc.focus();
		return;
	}
	
	if(form.numero.value==""){
		alert("Debe ingresar su numero de tarjeta....");
		form.numero.focus();
		return;
	}
	

	if(form.numeroc.value==""){
		alert("Debe comfirmar su numero de tarjeta....");
		form.numeroc.focus();
		return;
	}
	
	if(form.numero.value!=form.numeroc.value){
		alert("la comfirmacion no coincide con el numero de tarjeta....");
		form.numeroc.focus();
		return;
	}
	if(form.numero.value.length<16){
		alert("necesita digitar el numero completo....");
		form.numero.focus();
		return;
	}
	form.submit();
}
function validarNumero(input) {
    
    input.value = input.value.replace(/[^0-9]/g, '');

    if (input.value.length > 16) {
        input.value = input.value.slice(0, 16);
    }
}

	</script>
 </head>
<body style="background-color:#FCFF33;">
<center><h1>registro de compras</h1></center>
<form action="realisa_compra">
<table align="center">
<tr><td>Productos:</td><td><select name="prod">
<option value="0">--Seleccione su producto--</option>
<option value="1">zapatos</option>
<option value="2">camisa</option>
<option value="3">reloj</option>
<option value="4">computador</option>
<option value="5">libro</option>

<tr><td>Cantidad:</td><td><input type="number" name="cantidad" value="1" size="20"/></td></tr>
<tr><td>Precio por unidad:</td><td><input type="number" name="precio" value="" size="20"/></td></tr>
<tr><td>Nombre del cliente:</td><td><input type="text" name="nombrec" value="" size="40"/></td></tr>
<tr><td>Apellidos del cliente:</td><td><input type="text" name="apellidoc" value="" size="40"/></td></tr>
<tr><td>Visa:</td><td><input type="radio" name="tarjeta" value="VISA" checked/>
<tr><td>MasterCard:</td><td><input type="radio" name="tarjeta" value="MasterCard"/>
<tr><td>American Express:</td><td><input type="radio" name="tarjeta" value="AmericanExpress"/>
<tr><td>Numero de tarjeta:</td><td><input type="text" id="numero" pattern="[0-9]*" name="numero" value="" size="40" maxlength="16" oninput="validarNumero(this)"/></td></tr>
<tr><td>Comfirme el numero de tarjeta:</td><td><input type="text" id="numeroc" pattern="[0-9]*" name="numeroc"  value="" size="40" maxlength="16" oninput="validarNumero(this)"/></td></tr>

<tr><td colspan="2"><input type="button" value="ACEPTAR" onClick="valida_datos(this.form)"/></td></tr>
</table>
</form>
</body>
</html>