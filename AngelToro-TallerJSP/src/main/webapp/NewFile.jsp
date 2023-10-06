<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Walmart</title>
<style>
body {
	background-image:
		url("https://cdn.corporate.walmart.com/dims4/WMT/d4094e6/2147483647/strip/true/crop/2579x1354+0+0/resize/1200x630!/quality/90/?url=https%3A%2F%2Fcdn.corporate.walmart.com%2Fa2%2F90%2Fb4fa63754123b3e91ae87b6e6e96%2Ffondo-sparks.jpg");
}



a1 {
	font-family: 'Montserrat', sans-serif;
	font-size: 4rem;
	color: white;
	ext-align: center;
}

@keyframes flicker {
    from {
        opacity: 1;
    }
    to {
        opacity: 0.8;
    }
}

h1 {
	margin: 0%;
	margin-left: 0%;
	margin-right: 0%;
	margin-top: 2%;
	width: 100%;
	height: 170px;
	border-radius: 0px;
	background: white;
}


img {
	margin-left: 30%;
	margin-bottom: 20%;
	margin-top: 1.5%;
	border-radius: 0%;
	background-color: white;
}

div {
	margin: 1%;
	margin-left: 14%;
	margin-right: 30%;
	width: fit-content;
	width: 70%;
	height: 390px;
	border: 6px solid black;
	border-collapse: collapse;
	border-color: #FFB027;
}

table {
	border-collapse: separate;
	width: "800";
	height: "1000";
}
td {
	padding: 13px;
    font-family: 'Montserrat', sans-serif;
	color: white;
	position: relative;
	left: 0%;
	transform: translateX(0%);

}

input [type=numbrer] {
	width: 100%
}

input[type=text] {
	width: 95%;
}
input[type=text2] {
	width: 95%;
}

input[type=radio] {
	transform: scale(1.5);
}

button {
	margin-top: 10px;
	margin-left: 340px;
	width: 400px;
	height: 50px;
	padding: 10px;
	border-radius: 5px;
	font-weight: 80%;
	font-size: 1.2rem;
	color: white;
	background-color: #FFB027;
	-webkit-transition: font-size 1s ease;
	transition: font-size 1s ease;
}

select {
	width: 360px;
	height: 20px;
}

button:hover {
	font-size: 28px;
}
</style>
</head>
<body>
	<script type="text/javascript">
	function confirmación(form) {
	    if (form.canti.value < 1) {
	        alert("¡Número ingresado inválido, por favor ingrese un número mayor a 1!");
	        form.canti.focus();
	        return false;
	    }
	    if (form.preci.value < 1) {
	        alert("¡Número ingresado inválido, por favor ingrese un número mayor a 1");
	        form.canti.focus();
	        return false;
	    }
	    return true;
	}
		function confirm(form) {

			if (form.articu.value == "0") {
				alert("Seleecione un articulo");
				form.articu.focus();
				return;
			}
			if (form.canti.value == "") {
				alert("Por favor ingrese la cantidad de productos a comprar");
				form.canti.focus();
				return;
			}
			if (form.preciu.value == "") {
				alert("Ingrese el costo del los productos a comprar");
				form.preciu.focus();
				return;
			}
			if (form.nomb.value == "") {
				alert("Ingrese su Nombre");
				form.nomb.focus();
				return;
			}
			if (form.apell.value == "") {
				alert("Ingrese su Apellido");
				form.apell.focus();
				return;
			}

			if (form.tarje.value == "") {
				alert("Ingrese el numero de su tarjeta");
				form.tarje.focus();
				return;
			}
			if (form.tarjeco.value == "") {
				alert("Por favor ingrese la confirmación de su tarjeta");
				form.tarjeco.focus();
				return;
			}
			if (form.tarje.length === 16) {
				alert("El numero de la tajeta es invalido");
				form.tarje.focus();
				return;
			}
			if (form.tarjeco.value != form.tarje.value) {
				alert(" El numero de tarjeta no coincide con la confirmación");
				form.tarjeco.focus();
				return;
			}
			  if (!validarCantidad(form)) {
			        return;
			    }
			    if (!validarPrecio(form)) {
			        return;
			    }

			form.submit

		}
	</script>
	<a1></a1>
	<h1>
		<img
			src="https://logodownload.org/wp-content/uploads/2015/02/Walmart-logo-4.png" alt="Walmart" width="600" height="130">
	</h1>
	<div>
		<form form id="compra" action="index2.jsp" method="post">
			<table align="center">
				<tr>
					<td>Articulos:</td>
					<td><select name="articu">
							<option value="1">Elija una opci&oacute;n</option>
							<option value="Licuadora">Licuadora</option>
							<option value="Sangria">Sangria</option>
							<option value="Pollo">Pollo</option>
							<option value="Papel h">Papel higienico</option>
							<option value="TV">Televisores</option>
					</select></td>
				</tr>
				<tr>
					<td>Cantidad:.</td>
					<td style="position: relative;"><input type="number"
						name="canti" value="" size="60" style="padding-left: 190px;" /></td>
				</tr>
				<tr>
					<td>Precio Unitario:</td>
					<td style="position: relative;"><input type="number"
						name="precio" value="" size="60" style="padding-left: 190px;" /></td>
				</tr>


				<tr>
					<td>Nombres:.</td>
					<td><input type="text" name="nomb" value="" size="30"></td>
				</tr>

				<tr>
					<td>Apellidos:.</td>
					<td><input type="text" name="apell" size="30" /></td>
				</tr>

				<tr>
					<td>Tarjeta:.</td>
					<td><input type="radio" id="visa" name="tarj" value="VISA"
						checked /> <label for="visa">Visa</label> <input type="radio"
						id="master" name="tarj" value="MasterCard" /> <label for="master">MasterCard</label>
						<input type="radio" id="amex" name="tarj" value="American Express" />
						<label for="amex">American Express</label></td>
				</tr>
					<tr>
					<td>Numero de Tarjeta:.</td>
					<td><input type="text" name="numt" value="" size="50" /></td>

				</tr>

				<tr>
					<td>Confirmar Numero de Tarjeta:.</td>
					<td><input type="text" name="numtCon" value="" size="50" /></td>

				</tr>

			</table>
			<button type="submit" onclick=confirm(this.form)>Confirmar
				Compra</button>
</a>
			
					
	
				</form>
				</div>
</body>
</html>