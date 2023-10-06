<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="style01.css">
  
    <meta charset="UTF-8">
    <title>INFORME COMPRA</title>
</head>
<body>
    <div class="header">
        <h1>Factura de Compra</h1>
    </div>

    <div class="info-box">
        <h2>Detalle de Compra</h2>
        <p>Señor usuario ${nombre} ${apellidos}, su compra fue realizada satisfactoriamente</p>
        <p>Por un valor total de $ ${total}.Correspondiente a ${cantidad} ${articulo}/s.</p>
        <br>
        <p>El precio por unidad fue de ${valor_u}</p>
        <p>La compra fue realizada con la tarjeta de crédito número ${n_tarjeta} de la franquicia ${tarjeta}.</p>
        <p>Fecha de compra: ${fecha}</p>
        <p>Dirección IP: ${ip_address}</p>
        <br>
        <p>Cordialmente Amazing.</p>
        
        <a href="index.jsp" type="button">Volver a Comprar</a>
        
      
    </div>
</body>
</html>