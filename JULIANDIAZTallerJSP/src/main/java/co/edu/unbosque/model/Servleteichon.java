package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servleteichon
 */
@WebServlet("/Servleteichon")
public class Servleteichon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servleteichon() {
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
		
		String artic = request.getParameter("artic");
		String canti = request.getParameter("canti");
		String preciu = request.getParameter("preciu");
		String nom = request.getParameter("nom");
		String apellido = request.getParameter("apeli");
		String tarj = request.getParameter("tarj");
		String numt = request.getParameter("numt");

		if (tarj.equals(1)) {
			tarj = "Visa";
		} else if (tarj.equals(2)) {
			tarj = "MasterCard";
		} else if (tarj.equals(3)) {
			tarj = "American Express";
		}

		if (numt.length() == 16) {
			String rta = "**** **** **** " + numt.charAt(12) + numt.charAt(13) + numt.charAt(14) + numt.charAt(15);
			numt = rta;
		}
		request.setAttribute("artic", artic);
		request.setAttribute("canti", canti);
		request.setAttribute("preciu", formatearNumero(Integer.parseInt(preciu)));
		request.setAttribute("nom", nom);
		request.setAttribute("apellido", apellido);
		request.setAttribute("tarj", tarj);
		request.setAttribute("numt", numt);
		request.setAttribute("ip", iP());
		request.setAttribute("fecha", fecha());
		request.setAttribute("combi", formatearNumero((Integer.parseInt(canti) * Integer.parseInt(preciu))));
		//
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		dispatcher.forward(request, response);
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

	private String fecha() {
		Date fecha = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		return dateFormat.format(fecha);
	}
	
	public static String formatearNumero(int numero) {
		  // Obtener una instancia de NumberFormat para el idioma español
		  NumberFormat nf = NumberFormat.getInstance(new Locale("es", "ES"));
		  // Establecer el número mínimo de dígitos en los grupos
		  nf.setMinimumIntegerDigits(1);
		  // Formatear el número y retornarlo como String
		  return nf.format(numero);
		}

	private String iP() {
		String ip = "";
		try {
			ip = InetAddress.getLocalHost().getHostAddress();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ip;
	}

}
