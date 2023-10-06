<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- String numeroo=Numeroc.toString(); -->
<!-- 	String acumulador=""; -->
<!-- 	for(int i=0;i<numeroo.length();i++){ -->
<!-- 		if(i<4){ -->
<!-- 			acumulador=acumulador+numeroo[i]; -->
<!-- 		}else{ -->
<!-- 			acumulador=acumulador+"*"; -->
<!-- 		} -->
<!-- 	} -->
<!-- 	return acumulador; -->
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%
String usuarioN = request.getAttribute("Usuarion").toString();
String usuarioA = request.getAttribute("Usuarioa").toString();
String articulo = request.getAttribute("Articulo").toString();
String cantidad = request.getAttribute("Cantidad").toString();
String unidad = request.getAttribute("Unidad").toString();
String franquicia = request.getAttribute("Tarjetadc").toString();
String Cnumeroc = request.getAttribute("Ccredito").toString();
int preciou = Integer.parseInt(request.getParameter("Unidad"));
int precioc = Integer.parseInt(request.getParameter("Cantidad"));
int preciot = preciou*precioc;
String di = request.getAttribute("dip").toString();
Date dNow = new Date();
SimpleDateFormat ft =new SimpleDateFormat ("dd/MM/yyyy");
String currentDate = ft.format(dNow);
String primeros12Digitos = Cnumeroc.substring(0, 12);
String asteriscos = "**** **** **** ";
String numeroEnmascarado = asteriscos + Cnumeroc.substring(12);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Compra</title>
</head>
<body>
<p>Señor Usuario: <b><%=usuarioN%> <%=usuarioA%></b></p><br>

Su compra fue realizada satisfactoriamente por un valor de <b>$ <%=preciot %></b>. Correspondiente<br>
a <b><%=cantidad%> <%=articulo%></b>.<br>
El precio por unidad fue de: <b>$ <%=unidad %></b><br>
La compra fue realizada con la tarjeta de credito de n&uacute;mero: <%=numeroEnmascarado%>  de la<br>
franquicia <b><%=franquicia%>.</b> Fecha de la compra: <b><%=currentDate%>.</b><br>
<p>Dirrecc&iacute;on IP :<b><%=di%></b></p><br>
<a href="Inicio.jsp"> Volver </a>

</body>
</html>