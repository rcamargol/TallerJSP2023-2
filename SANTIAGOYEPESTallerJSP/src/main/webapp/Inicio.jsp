<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script language="JavaScript">
function valida_envia(form){
	if(form.Usuarion.value==""){
		alert("Debe ingresar el nombre del cliente...");
		form.Usuarion.focus();
		return;
	}
	if(form.Usuarioa.value==""){
		alert("Debe ingresar el apellido del cliente...");
		form.Usuarioa.focus();
		return;
	}
	if(form.Articulo.value==""){
		alert("Debe seleccionar un articulo...");
		form.Articulo.focus();
		return;
	}
	if(form.Cantidad.value==""){
		alert("Debe ingresar la cantidad del articulo seleccionado");
		form.Cantidad.focus();
		return;
	}
	if(form.Unidad.value==""){
		alert("Debe ingresar el precio por unidad del artculo...");
		form.Unidad.focus();
		return;
	}
	if(form.Tarjetadc.value=="Debe seleccionar alguna franquicia..."){
		alert("");
		form.Tarjetadc.focus();
		return;
	}
	if(form.Ncredito.value==""){
		alert("Debe ingresar el numero de tarjeta de credito del usuario...");
		form.Ncredito.focus();
		return;
	}
	if(form.Ccredito.value==""){
		alert("Debe ingresar el mismo numero de tarjeta de credito del usuario para confirmarlo...");
		form.Ccredito.focus();
		return;
	}
	if(form.Ncredito.value!==form.Ccredito.value){
		alert("El numero de confirmacion de la tarjeta de credito ingresado no es el mismo al del numero de la tarjeta")
		form.Ccredito.focus();
		return;
	}
	form.submit();
}
    
</script>
</head>
<body>
<form action="Servlet"method="get">
<table border="1">
<center> </center>
    <tr>
      <th>REGISTRO DE COMPRAS</th>
    </tr>
    <tr>
      <td>Art&iacute;culo :</td>
      <td><select name="Articulo">
      <option value="0">:: Seleccione ::</option>
      <option value="Zapatos">Zapato</option>
      <option value="Camisas">Camisa</option>
      <option value="Relojes">Reloj</option>
      <option value="Libros">Libro</option>
      <option value="Computadores">Computador</option>
      </select>
      </td>
    </tr>
    <tr>
      <td>Cantidad :</td>
      <td><input type="Text"name="Cantidad" required minlength="1"value="" size="20"></td>
      </tr>
    <tr><td>Precio por unidad :</td>
      <td><input type="Text"name="Unidad" required minlength="1"value="" size="20"></td>
    </tr>
    <tr>
      <td>Nombres del cliente :</td>
      <td><input type="Text"name="Usuarion" value="" size="40"></td>
      </tr>
      <tr>
      <td>Apellidos del cliente :</td>
      <td><input type="Text"name="Usuarioa" value="" size="40"></td>
    </tr>
    <tr>
      <td>Tarjeta de credito :</td>
      <td><input type="radio" name="Tarjetadc" value="VISA" required checked="">VISA<br>
      <input type="radio" name="Tarjetadc" value="MASTERCARD">MASTERCARD<br>
      <input type="radio" name="Tarjetadc" value="AMERICAN EXPRESS">AMERICAN EXPRESS<br>
      </td>
      </tr>
    <tr><td>N&uacute;mero de tarjeta de credito :</td>
      <td><input type="Text"name="Ncredito" required minlength="16" maxlength="16" value="" size="40"></td>
    </tr>
    <tr>
      <td>Confirmar n&uacute;mero de tarjeta de credito :</td>
      <td><input type="Text"name="Ccredito" required minlength="16" maxlength="16" value="" size="40"></td>
      </tr>
      <tr>
      <tr><td><font color="white">.</font></td>
      <td><font color="white">.</font></td>
    </tr>
    <tr>
      <td><input type="submit"value="CONFIRMAR COMPRA"onClick="valida_envia(this.form)"/></td><tr>
      </tr>
    <tr><td><font color="white">.</font> </td>
      <td><font color="white">.</font></td>
    </tr>
</table>
</form>
</body>
</html>