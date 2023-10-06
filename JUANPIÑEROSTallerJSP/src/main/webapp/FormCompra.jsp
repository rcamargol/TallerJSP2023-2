<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CSS/Estilo.css">
<meta charset="ISO-8859-1">
<title>SISTEMA_COMPRA</title>
</head>
<body>
<form action="Servlet_Form" method="get">
<h1>Formulario Compra</h1>
	<table border="1">
		<tr><td> Articulo:</td><td><select name="articulo" > 
		<option >:: Seleccione :: </option>
		<option value="Zapatos">:: Zapatos :: </option>
		<option value="Camisa">:: Camisa :: </option>
		<option value="Reloj">:: Reloj :: </option>
		<option value="Libros">:: Libro :: </option>
		<option value="Computador">:: Computador:: </option></select> </td>
		</tr>	
		<tr><td>Cantidad: </td><td><input type="text" name="cantidad" value="" size="20">
		</td></tr>
		<tr><td>Precio: </td><td><input type="text" name="precio" value="" size="20">
		</td></tr>
		<tr><td>Nombre_Cliete: </td><td><input type="text" name="nombre" value="" size="20" required>
		</td></tr>
		<tr><td>Apellido_Cliete: </td><td><input type="text" name="apellido" value="" size="20" required>
		</td></tr>
		<tr><td><input type="radio" name="metodopago" value="visa"  id="visa"> Visa
		
		<input type="radio" name="metodopago" value="martedcard"  id="martedcard"> MartedCard
		
		<input type="radio" name="metodopago" value="american"  id="amrecian"> American Express
		</td></tr>
		<tr><td>Numero_Tarjeta: </td><td><input type="text" name="tarjeta" value="" size="40" required>	
		</td></tr>
		<tr><td>Confirmar_Numero: </td><td><input type="text" name="confirmacion" value="" size="40" required>			
		</td></tr>
		<tr><td colspan="2"	><input type="submit" value="CONFIRMAR_COMPRAR" > </td></tr>
			  </table>
</form>
</body>
</html>