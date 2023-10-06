package co.edu.unbosque.model;

import java.io.*;
import java.text.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;


@WebServlet("/ProcesarCompra")
public class ProcesarCompraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String articulo = request.getParameter("articulo");
		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		double precioPorUnidad = Double.parseDouble(request.getParameter("precioPorUnidad"));
		String nombresCliente = request.getParameter("nombresCliente");
		String apellidosCliente = request.getParameter("apellidosCliente");
		String tarjetaCredito = request.getParameter("tarjetaCredito");
		String numeroTarjeta = request.getParameter("numeroTarjeta");
		String confirmarNumeroTarjeta = request.getParameter("confirmarNumeroTarjeta");

		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date fechaActual = new Date();

		String direccionIP = request.getRemoteAddr();

		double valorCompra = cantidad * precioPorUnidad;

		out.println("<html><body>");
		out.println("<h1>Confirmación de Compra</h1>");
		out.println("<p>Señor Usuario: " + "<b>" + nombresCliente + "</b>"+ " " + "<b>" + apellidosCliente + "</b>" + "</p>");
		out.println("<p>Su compra fue realizada satisfactoriamente por un valor de <b>$</b>" + "<b>" + valorCompra + "</b>" + ". Correspondiente a " +"<b>" +cantidad + "</b>" + " " + "<b>" + articulo +"</b>" + "(s)</p>");
		out.println("<p>El precio por unidad fue de: $" + "<b>" + precioPorUnidad + "</b>" + "</p>");
		out.println("<p>La compra fue realizada con la tarjeta de crédito número: " + "****"+ " " + "****" + " " + numeroTarjeta.substring(numeroTarjeta.length()-4) + "de la franquicia"+"<b>"+ tarjetaCredito +"</b>" +". Fecha de la compra: " + "<b>" + dateFormat.format(fechaActual) + "</b>" +"</p>");
		out.println("<p>Dirección IP: "+ "<b>" + direccionIP + "</b>" +"</p>");
		out.println("</body></html>");
		out.println("<br><a href=\"Inicio.jsp\"><button>Volver al Inicio</button></a>");
		out.println("</body></html>");
		
	}
}
