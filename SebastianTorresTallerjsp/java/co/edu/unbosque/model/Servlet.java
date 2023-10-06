package co.edu.unbosque.model;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Factura")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		
		PrintWriter salida = response.getWriter();

		String num = request.getParameter("numeroTarjeta");

		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");

		salida.println("<html><body>");
		
		salida.println("<h1>Confirmación de Compra</h1>");
		
		salida.println("<p>Señor Usuario: " + "<b>" + request.getParameter("nombre") + "</b>"+ " " + "<b>" + request.getParameter("apellido") + "</b>" + "</p>");
		
		salida.println("<p>Su compra fue realizada satisfactoriamente por un valor de <b>$</b>" + "<b>"	+ Integer.parseInt(request.getParameter("cantidad")) * Double.parseDouble(request.getParameter("precioUnitario")) + "</b>" + ". Correspondiente a " +"<b>" +request.getParameter("cantidad") + "</b>" + " " + "<b>" + request.getParameter("articulo") +"</b>" + "(s)</p>");
		
		salida.println("<p>El precio por unidad fue de: $" + "<b>" + request.getParameter("precioUnitario") + "</b>" + "</p>");
		
		salida.println("<p>La compra fue realizada con la tarjeta de crédito número: " + "**** ****  " + num.substring(num.length()-4) + " de la franquicia"+"<b>"+ request.getParameter("tarjeta") +"</b>" +". Fecha de la compra: " + "<b>" + dateFormat.format(new Date()) + "</b>" +"</p>");
		
		salida.println("<p>Dirección IP: "+ "<b>" + request.getRemoteAddr() + "</b>" +"</p>");
		
		salida.println("</body></html>");
	}
}
