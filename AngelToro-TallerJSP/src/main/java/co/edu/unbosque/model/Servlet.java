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
@WebServlet("/ProcesarCompra")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet() {
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

		String artic = request.getParameter("articu");
		String canti = request.getParameter("canti");
		String preciu = request.getParameter("precio");
		String nom = request.getParameter("nomb");
		String apellido = request.getParameter("apell");
		String tarj = request.getParameter("artucu2");
		String numt = request.getParameter("numt");
		String estado = "Aprobado";

		Date fecha = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		String fechaS = dateFormat.format(fecha);

		String ip = InetAddress.getLocalHost().getHostAddress();

		if (tarj.equals(1)) {
			tarj = "Visa";
		} else if (tarj.equals(2)) {
			tarj = "MasterCard";
		} else if (tarj.equals(3)) {
			tarj = "American Express";
		}

		if (numt.length() != 16) {
			estado = "Rechazado";
			numt = "Invalido";
		}
		if (numt.length() == 16) {
			String rta = "**** **** **** " + numt.charAt(12) + numt.charAt(13) + numt.charAt(14) + numt.charAt(15);
			numt = rta;
		}
		request.setAttribute("articu", artic);
		request.setAttribute("canti", canti);
		request.setAttribute("precio", preciu);
		request.setAttribute("nomb", nom);
		request.setAttribute("apell", apellido);
		request.setAttribute("articu2", tarj);
		request.setAttribute("numt", numt);
		request.setAttribute("ip", ip);
		request.setAttribute("fecha", fechaS);
		request.setAttribute("aprovado", estado);

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

}
