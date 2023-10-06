<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
String producto = request.getAttribute("producto").toString();
int cantidad=Integer.parseInt(request.getAttribute("cantidad").toString());
int precioPorUnidad=Integer.parseInt(request.getAttribute("precioPorUnidad").toString());
String nombreCompleto = request.getAttribute("nombreCompleto").toString();
String tarjetaCredito = request.getAttribute("tarjetaCredito").toString();
String numTarjeta = request.getAttribute("numTarjeta").toString();
String ip = request.getAttribute("ip").toString();
int precioTotal = Integer.parseInt(request.getAttribute("precioTotal").toString());
String fechaTramite = request.getAttribute("fechaTramite").toString();
%>
<head>
<style>
p, A{

	color: darkgreen;
}
h1{
	color: darkgreen;
}
body{
	background-color: lightgreen;
}
</style>
<meta charset="UTF-8">
<title>Conclusión compra</title>
</head>
<body>
<table align="center">
<tr><td align="center"><h1>Compra realizada con éxito</h1></td></tr>
<tr><td><p>Señor usuario: <b><%=nombreCompleto %></b><br><br>
Su compra fue realizada satisfactoriamente por un valor de <b>$<%=precioTotal %></b>. Correspondiente a <b><%=cantidad %> <%=producto %></b>.<br><br>
El precio por unidad fue de: <b>$<%=precioPorUnidad %></b>.<br>
La compra fue realizada con la tarjeta de cr&eacute;dito n&uacute;mero <b><%=numTarjeta %></b> de la franquicia <b><%=tarjetaCredito %></b>. 
Fecha de compra: <b><%=fechaTramite %></b>.<br><br>
Dirección IP de realización de la compra: <b><%=ip %></b></p>
<br><br>
</td></tr>
<tr><td align="center"><br>
<A href="inicio.jsp">Regresar a la página anterior</A>
<br></td></tr>
</table>

</body>
</html>