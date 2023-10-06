<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Taller JSP</title>
</head>
<body>
		<h2>Registro de Compras</h2>

		<form action="ProcesarCompra" method="post">

			Artículo: <select name="articulo">
				<option value="zapatos">Zapatos</option>
				<option value="camisa">Camisa</option>
				<option value="reloj">Reloj</option>
				<option value="libro">Libro</option>
				<option value="computador">Computador</option>
			</select><br><br> 
			
			<label for="cantidad">Cantidad:</label>
        	<input type="number" name="cantidad" size="20"><br><br>
        
       		<label for="precioPorUnidad">Precio por Unidad:</label>
        	<input type="number" name="precioPorUnidad" size="20"><br><br>
        
        	<label for="nombresCliente">Nombres del Cliente:</label>
        	<input type="text" name="nombresCliente" size="40"><br><br>
        
        	<label for="apellidosCliente">Apellidos del Cliente:</label>
        	<input type="text" name="apellidosCliente" size="40"><br><br>
				
			<label>Tarjeta de Crédito:</label><br>
        	<input type="radio" name="tarjetaCredito" value="Visa">
        	<label for="visa">Visa</label><br>
        	<input type="radio" name="tarjetaCredito" value="MasterCard">
        	<label for="mastercard">MasterCard</label><br>
        	<input type="radio" name="tarjetaCredito" value="American Express">
        	<label for="americanExpress">American Express</label><br><br>
        
        	<label for="numeroTarjeta">Número de Tarjeta de Crédito:</label>
        	<input type="number" name="numeroTarjeta" size="40"><br><br>
        
        	<label for="confirmarNumeroTarjeta">Confirmar Número de Tarjeta de Crédito:</label>
        	<input type="number" name="confirmarNumeroTarjeta" size="40"><br><br>
			
			<br> <input type="submit" value="CONFIRMAR COMPRA">
		</form>
</body>
</html>