<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="style.css">
   
   <meta charset="UTF-8">
    <title>AMAZING</title>
    
</head>
<body>


 <div class= "header">
 <img src = "logo.png" width="150">
</div>

   <br>
    <form id="miForm" action="CompraServlet" method="post" aling="center">
        <table align="center">
            <br>
              <center>FORMULARIO DE COMPRA</center>
  			<br>
            <div class="compra">
                <tr>
                    <td>Articulo:</td>
                    <td>
                        <select name="articulos">
                            <option value="0">Seleccione</option>
                            <option value="1">Zapatos</option>
                            <option value="2">Camisa</option>
                            <option value="3">Reloj</option>
                            <option value="4">Libro</option>
                            <option value="5">Computador</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Cantidad:</td>
                    <td><input type="text"  name="cantidad" value="" size="20" pattern="[0-9]*"  title="Ingresa solo caracteres numéricos"/></td>
                </tr>
                <tr>
                    <td>Valor Unidad:</td>
              <td><input type="text" name="valor" value="" size="20" placeholder="COP"
              pattern="[0-9]*\.?[0-9]+" title="Ingresa en valor numerico"/></td></tr>
            </div>
            <br>
           
            <div class="cliente">
                <tr>
                    <td>Nombres:</td>
                    <td><input type="text" name="nombres" value="" size="40"  title="Nombre" /></td>
                </tr>
                <tr>
                    <td>Apellidos:</td>
                    <td><input type="text" name="apellidos" value="" size="40"  title="Apellido" /></td>
                </tr>
            </div>
            <div class="tarjeta">
                <tr>
                    <td>Visa<input type="radio" id="visa" name="tarjeta" value="visa"></td>
                </tr>
                <tr>
                    <td>MasterCard<input type="radio" id="master card" name="tarjeta" value="masterCard"></td>
                </tr>
                <tr>
                    <td>AmericanExpress<input type="radio" id="american express" name="tarjeta" value="americanExpress"></td>
                </tr>
              <tr>
                    <td>Tarjeta:</td>
                    <td>
                        <input class="credit-card-input" id="tarjeta" type="text"
                        name="tarjeta1" placeholder="0123 4567 8910 0000" pattern="[0-9]{4} [0-9]{4} [0-9]{4} [0-9]{4}"
                        title="Ingresa solo 16 caracteres numéricos" maxlength="19">
                    </td>
                </tr>
                <tr>
                    <td>Confirmar tarjeta:</td>
                    <td>
                        <input class="credit-card-input" id="tarjeta-confirmar" type="text"
                        name="c_tarjeta" placeholder="0123 4567 8910 0000" pattern="[0-9]{4} [0-9]{4} [0-9]{4} [0-9]{4}"
                        title="Ingresa solo 16 caracteres numéricos" maxlength="19">
                    </td>
                </tr>
            </div>
            <tr>
                <td colspan="2">
                    <input type="submit" value="COMPRAR" onClick="valida_envia(this.form)"/>
                    <br>
                  
                </td>
            </tr>
        </table>
       	
        <br>
        
    </form>
    <br>
        <script src="logicForm.js"></script>
</body>
</html>
