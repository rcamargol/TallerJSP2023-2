<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>REGISTROS DE COMPRAS</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"> 
    <script>
        function validarFormulario() {
            var articulo = document.getElementById('articulo').value;
            var cantidad = document.getElementById('cantidad').value;
            var precio = document.getElementById('precio').value;
            var nombre = document.getElementById('nombre').value;
            var apellido = document.getElementById('apellido').value;
            var numeroTarjeta = document.getElementById('numeroTarjeta').value;
            var confirmarNumero = document.getElementById('confirmarNumero').value;

            if (articulo === "") {
                alert("Por favor, seleccione un artículo.");
                return false;
            }

            if (isNaN(cantidad) || cantidad <= 0) {
                alert("Introduzca una cantidad válida.");
                return false;
            }

            if (isNaN(precio) || precio <= 0) {
                alert("Introduzca un precio válido.");
                return false;
            }

            if (nombre.trim() === "" || apellido.trim() === "") {
                alert("Introduzca su nombre y apellido.");
                return false;
            }

            if (numeroTarjeta !== confirmarNumero) {
                alert("El número de tarjeta y su confirmación no coinciden.");
                return false;
            }

            return true;
        }
    </script>

    <style>
        body {
            font-family: 'Poppins', sans-serif; /* fuente Poppins */
            background: url('https://source.unsplash.com/random/1920x1080?abstract') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #3E4A59;
        }

        .container {
            width: 90%;
            max-width: 700px;
            background-color: rgba(255, 255, 255, 0.9); /* Ligeramente blanco con transparencia */
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0px 5px 30px rgba(0, 0, 0, 0.3);
        }

        h2 {
            text-align: center;
            margin-bottom: 40px;
            color: #333;
            border-bottom: 2px solid #aaa; /* Color de borde neutro */
            padding-bottom: 20px;
        }

        label, input, select {
            width: 100%;
            padding: 15px 20px;
            margin-bottom: 30px;
            border: 2px solid #aaa; /* Color de borde neutro */
            border-radius: 10px;
            font-size: 17px;
            transition: all 0.3s ease;
            background-color: #fafafa; /* Gris claro para los inputs */
            color: #3E4A59;
        }

        input:focus, select:focus {
            border: 2px solid #666; /* Gris más oscuro al estar enfocado */
            outline: none;
            box-shadow: 0px 0px 15px rgba(62, 74, 89, 0.2);
        }

        input[type="radio"] {
            width: auto;
            margin-right: 10px;
            vertical-align: middle;
        }

        input[type="submit"] {
            background-color: #666; /* Gris neutro para el botón */
            color: #fafafa;
            border: none;
            cursor: pointer;
            border-radius: 10px;
            font-size: 20px;
            padding: 18px 30px;
            transition: background-color 0.4s ease;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        .card-group {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registro de Compras</h2>
        <form action="processPurchase" method="post" onsubmit="return validarFormulario()">
            <div>
                <label for="articulo">Artículo:</label>
                <select name="articulo" id="articulo">
                    <option value="zapatos">Zapatos</option>
                    <option value="camisa">Camisa</option>
                    <option value="reloj">Reloj</option>
                    <option value="libro">Libro</option>
                    <option value="computador">Computador</option>
                </select>
            </div>
            
            <div>
                <label for="cantidad">Cantidad:</label>
                <input type="text" name="cantidad" id="cantidad">
            </div>
            
            <div>
                <label for="precio">Precio por unidad:</label>
                <input type="text" name="precio" id="precio">
            </div>
            
            <div>
                <label for="nombre">Nombres del cliente:</label>
                <input type="text" name="nombre" id="nombre">
            </div>
            
            <div>
                <label for="apellido">Apellidos del cliente:</label>
                <input type="text" name="apellido" id="apellido">
            </div>

            <div>
                <label>Tarjeta de crédito:</label>
                <div class="card-group">
                    <label><input type="radio" name="tarjeta" value="Visa"> Visa</label>
                    <label><input type="radio" name="tarjeta" value="MasterCard"> MasterCard</label>
                    <label><input type="radio" name="tarjeta" value="American Express"> American Express</label>
                </div>
            </div>

            <div>
                <label for="numeroTarjeta">Número de tarjeta de crédito:</label>
                <input type="text" name="numeroTarjeta" id="numeroTarjeta">
            </div>

            <div>
                <label for="confirmarNumero">Confirmar número de tarjeta de crédito:</label>
                <input type="text" name="confirmarNumero" id="confirmarNumero">
            </div>

            <div>
                <input type="submit" value="CONFIRMAR COMPRA">
            </div>
        </form>
    </div>
</body>
</html>

           