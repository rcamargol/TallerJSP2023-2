<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ARA</title>
<style>
h1 {
	font-family: ‘Squada One’, cursive;
	font-size: 4rem;
	color: white;
	text-align: center;
	text-shadow: 0 0 10px black, 0 0 20px black, 0 0 30px black, 0 0 40px
		#ff0000, 0 0 50px #ff0000, 0 0 60px #ff0000, 0 0 70px #ff0000;
	animation: flicker 3s infinite alternate;
}

@
keyframes flicker {from { opacity:1;
	
}

to {
	opacity: 0.8;
}

}
img {
	display: block;
	margin-left: auto;
	margin-right: auto;
	border-radius: 50%;
	box-shadow: inset 0 0 50px #fff, inset 20px 0 80px #f0f, inset -20px 0
		80px #0ff, inset 20px 0 300px #f0f, inset -20px 0 300px #0ff, 0 0 50px
		#fff, -10px 0 80px #f0f, 10px 0 80px #0ff;
}

div {
	margin: auto;
	width: fit-content;
	padding: 20px;
	border-radius: 10px;
	background-image: linear-gradient(to right, #ff0000, #ffff00);
}

table {
	border-collapse: collapse;
}

td {
	padding: 10px;
}

input, select {
	border-radius: 5px;
	border: none;
}

input[type=number] {
	width: 100%;
}

input[type=text] {
	width: 100%;
}

input[type=radio] {
	transform: scale(1.5);
}

button {
	margin-top: 10px;
	padding: 10px;
	border-radius: 10px;
	border: none;
	font-weight: bold;
	font-size: 1.2rem;
	color: white;
	background-color: #ff0000;
	transition: transform .2s;
}

button:hover {
	transform: scale(1.1);
}
</style>
</head>
<body>
	<script type="text/javascript">
		
	function validarCantidad(form) {
	    if (form.cantidad.value < 1) {
	        alert("¡Por favor, ingresa solo numeros mayores que uno para la cantidad!");
	        form.cantidad.focus();
	        return false;
	    }
	    return true;
	}

	function validarPrecio(form) {
	    if (form.preciounitario.value < 1) {
	        alert("¡Por favor, ingresa solo valores mayores que uno para el precio!");
	        form.preciounitario.focus();
	        return false;
	    }
	    return true;
	}

	function validarNumeroTarjeta(form) {
	    if (form.numerotarjeta.value < 1) {
	        alert("¡Por favor, ingresa solo numeros mayores que uno para el numero de tarjeta!");
	        form.numerotarjeta.focus();
	        return false;
	    }
	    if (form.numerotarjeta.value.length != 16) {
	        alert("Por favor, asegurate de que tu numero de tarjeta tenga exactamente 16 digitos!");
	        form.numerotarjeta.focus();
	        return false;
	    }
	    return true;
	}
	
	function confirm(form) {

			if (form.articulo.value == "0") {
				alert("Seleecione un articulo");
				form.articulo.focus();
				return;
			}
			if (form.cantidad.value == "") {
				alert("Ingrese la cantidad de productos a comprar");
				form.cantidad.focus();
				return;
			}
			if (form.preciounitario.value == "") {
				alert("Ingrese el costo del los productos");
				form.preciounitario.focus();
				return;
			}
			if (form.nombres.value == "") {
				alert("Ingrese su Nombre");
				form.nombres.focus();
				return;
			}
			if (form.apellidos.value == "") {
				alert("Ingrese su Apellido");
				form.apeli.focus();
				return;
			}

			if (form.apellidos.numerotarjeta == "") {
				alert("Ingrese su tarjeta");
				form.numerotarjeta.focus();
				return;
			}
			if (form.confirmarnumerotarjeta.value == "") {
				alert("Confirme su tarjeta");
				form.confirmarnumerotarjeta.focus();
				return;
			}
			
			if (form.confirmarnumerotarjeta.value != form.numerotarjeta.value) {
				alert("Tu tarjeta y su confirmacion no son coinciden");
				form.confirmarnumerotarjeta.focus();
				return;
			}
			
			  if (!validarCantidad(form)) {
			        return;
			    }
			  if (!validarPrecio(form)){
				  return;
			  }
			  if (form.numerotarjeta.value == "") {
			        alert("Ingrese su tarjeta");
			        form.numerotarjeta.focus();
			        return false;
			    }
			   if (!validarNumeroTarjeta(form)) {
			        return false;
			    }

			   if (form.confirmarnumerotarjeta.value == "") {
			        alert("Confirme su tarjeta");
			        form.confirmarnumerotarjeta.focus();
			        return false;
			    }
			  
			form.submit();

		}
	</script>
	<h1>Tiendas ARA</h1>
	<img data-v-2c07685e=""
		src="https://seeklogo.com/images/T/tiendas-ara-logo-CE2211ACBF-seeklogo.com.png"
		class="img-fluid transparency-grid" ondragstart="return false;"
		data-hj-suppress="true" style="max-height: 50vh;">
	<div>
		<form id="compra" action="Servlet1" method="post">
			<table align="center">
				<tr>
					<td>Articulo:.</td>
					<td><select name="articulo">
							<option value="0">Elija una opcion</option>
							<option value="Televisores">Televisores</option>
							<option value="Licuadora">Licuadora</option>
							<option value="Sangria">Sangria</option>
							<option value="Pollo">Pollo</option>
							<option value="Papel Higenico">Papel Higenico</option>
					</select></td>
				</tr>
				<tr>
					<td>Cantidad:.</td>
					<td><input type="number" name="cantidad" value="" size="20" /></td>
				</tr>
				<tr>
					<td>Precio Unitario:</td>
					<td style="position: relative;"><input type="number"
						name="preciounitario" value="" size="20"
						style="padding-left: 15px;" /></td>
				</tr>


				<tr>
					<td>Nombres:.</td>
					<td><input type="text" name="nombres" value="" size="40" /></td>
				</tr>

				<tr>
					<td>Apellidos:.</td>
					<td><input type="text" name="apellidos" value="" size="40" /></td>
				</tr>

				<tr>
					<td>Tarjeta:.</td>
					<td><input type="radio" id="visa" name="tarjeta" value="VISA"
						checked /> <label for="visa">Visa</label> <input type="radio"
						id="master" name="tarjeta" value="MasterCard" /> <label
						for="master">MasterCard</label> <input type="radio" id="amex"
						name="tarjeta" value="American Express" /> <label for="amex">American
							Express</label></td>
				</tr>


				<tr>
					<td>Numero de Tarjeta:.</td>
					<td><input type="number" name="numerotarjeta" value=""
						size="20" /></td>

				</tr>

				<tr>
					<td>Confirmar Numero de Tarjeta:.</td>
					<td><input type="number" name="confirmarnumerotarjeta"
						value="" size="20" /></td>

				</tr>

			</table>

			<button type="button" onclick=confirm(this.form)>Confirmar
				Compra</button>


		</form>
	</div>
</body>
</html>
