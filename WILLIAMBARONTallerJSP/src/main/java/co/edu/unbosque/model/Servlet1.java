package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nextHTML = "/indexRTA.jsp";
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//

		String cantidad = request.getParameter("cantidad");
	    String articulo = request.getParameter("articulo");
	    String nombres = request.getParameter("nombres");
	    String preciounitario = request.getParameter("preciounitario");
	    String tarjeta = request.getParameter("tarjeta");
	    String numerotarjeta = request.getParameter("numerotarjeta");
	    String apellidos = request.getParameter("apellidos");
	    String estado = "Aprobado";

	    Date fecha = new Date();
	    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	    String fechaS = dateFormat.format(fecha);

	    String ip = InetAddress.getLocalHost().getHostAddress();

	    tarjeta = getCardType(tarjeta);
	    numerotarjeta = validateCardNumber(numerotarjeta);

	    if (numerotarjeta.equals("Invalido")) {
	        estado = "Rechazado";
	    }

	    setRequestAttributes(request, cantidad, nombres, articulo, tarjeta, preciounitario, ip, apellidos, fechaS, numerotarjeta, estado);

	    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
	    dispatcher.forward(request, response);
	}

	private String getCardType(String tarjeta) {
	    switch (tarjeta) {
	        case "1":
	            return "Visa";
	        case "2":
	            return "MasterCard";
	        case "3":
	            return "American Express";
	        default:
	            return tarjeta;
	    }
	}

	private String validateCardNumber(String numerotarjeta) {
	    if (numerotarjeta.length() == 16) {
	        return "**** **** **** " + numerotarjeta.substring(12);
	    } else {
	        return "Invalido";
	    }
	}

	private void setRequestAttributes(HttpServletRequest request, String cantidad, String nombres, String articulo, String tarjeta,
	                                  String preciounitario, String ip, String apellidos, String fechaS,
	                                  String numerotarjeta, String estado) {
	    request.setAttribute("cantidad", cantidad);
	    request.setAttribute("nombres", nombres);
	    request.setAttribute("articulo", articulo);
	    request.setAttribute("tarjeta", tarjeta);
	    request.setAttribute("preciounitario", preciounitario);
	    request.setAttribute("ip", ip);
	    request.setAttribute("apellidos", apellidos);
	    request.setAttribute("fecha", fechaS);
	    request.setAttribute("numerotarjeta", numerotarjeta);
	    request.setAttribute("estado", estado);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
