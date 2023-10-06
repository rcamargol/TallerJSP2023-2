<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String artic = "";
int canti = 0;
int precio = 0;
String nomb = "";
String apell = "";
String tarj = "";
String estado = "";
String numt = "";
String ip = "";
String fecha = "";



if (request.getAttribute("canti") != null) {
    canti = Integer.parseInt(request.getAttribute("canti").toString());
}
if (request.getAttribute("precio") != null) {
    precio = Integer.parseInt(request.getAttribute("precio").toString());
}
if (request.getAttribute("nomb") != null) {
    nomb = request.getAttribute("nomb").toString();
}
if (request.getAttribute("apell") != null) {
    apell = request.getAttribute("apell").toString();
}
if (request.getAttribute("articu") != null) {
    tarj = request.getAttribute("articu").toString();
}
if (request.getAttribute("Aprovado") != null) {
    estado = request.getAttribute("Aprovado").toString();
}
if (request.getAttribute("numt") != null) {
    numt = request.getAttribute("numt").toString();
}
if (request.getAttribute("ip") != null) {
    ip = request.getAttribute("ip").toString();
}
if (request.getAttribute("fecha") != null) {
    fecha = request.getAttribute("fecha").toString();
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmar Compra</title>
<style type="text/css">
body {
    background-image:
		url("https://cdn.corporate.walmart.com/dims4/WMT/d4094e6/2147483647/strip/true/crop/2579x1354+0+0/resize/1200x630!/quality/90/?url=https%3A%2F%2Fcdn.corporate.walmart.com%2Fa2%2F90%2Fb4fa63754123b3e91ae87b6e6e96%2Ffondo-sparks.jpg");
}

.container {
    width: 80%;
    margin: 0 auto;
    margin-top: 10%;
    border: 5px dashed #FFB027; 


}

h1 {
    text-align: center;
    text-transform: uppercase;
    color: #FFB027;
    text-shadow: #FFB027;
}

p {
    font-size: 20px;
    line-height: 1.5;
}

b {
    color: #008000;
}

.link {
    display: block;
    width: 100px;
    margin: 20px auto;
    padding: 10px;
    background-color: #FFB027;
    color: #000000;
    text-decoration: none;
    border-radius: 10px;
}

.link:hover {
    background-color: #FFB027;
    color: #FFB027;
}
</style>
</head>
<body>

<div class="container">
    <h1>Ticket</h1>

    <p>
        Cliente: <b><%= request.getAttribute("nomb") %></b> <b><%= request.getAttribute("apell") %></b>

    </p>
    <p>
        El estado de su transacción es <b><%=request.getAttribute("estado") %></b> por un valor de <b><%=(canti*precio)%></b>.
    </p>
    <p>
        Correspondiente a <b><%=canti%></b> <b><%=artic%></b>
    </p>
    <p>
        El precio por unidad fue de <b><%=precio%></b>
    </p>
    <p>
        La compra fue realizada con la tarjeta de crédito: <b><%=numt%></b>
        de la franquicia <b><%=tarj%></b>.
    </p>
    <p>
        Fecha de la compra: <b><%=fecha%></b>
    </p>
    <p>
        Desde la Dirección IP: <b><%=ip%></b>
    </p>

    <a href="NewFile.jsp" class="link">Volver</a>
    
</div>
</body>
</html>
