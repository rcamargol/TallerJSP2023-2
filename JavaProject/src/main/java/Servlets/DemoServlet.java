package Servlets;

import java.io.IOException;
import java.net.InetAddress;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * ServletEj3 implementation class ServletEj3
 */
@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DemoServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String html = "/RespuestaCompra.jsp";

		String articulo = request.getParameter("articulo");
		
		switch (articulo) {
		case "1":
			articulo = "Camisas";
			break;
		case "2":
			articulo = "Libros";
			break;
		case "3":
			articulo = "Computadores";
			break;
		case "4":
			articulo = "Zapatos";
			break;
		case "5":
			articulo = "Relojes";
			break;
		}

		String cantidad = request.getParameter("cantidad");
		String precio = request.getParameter("precio");
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String tarjeta = request.getParameter("tarjeta");
		String numeroTarjeta = request.getParameter("numeroTarjeta");
		String ultimos = numeroTarjeta.substring(numeroTarjeta.length() - 4);
		String tarjetaAst = "";
		if (numeroTarjeta.length() > 4) {
			for (int i = 0; i < numeroTarjeta.length() - 4; i++) {
				tarjetaAst += "*";
			}
		}
		boolean bCantidad = true;
		boolean bPrecio = true;
		int nCantidad = 0;
		int nPrecio = 0;
		int precioFinal = 0;
		String pfinal;
		String fecha;

		DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate fechaActual = LocalDate.now();
		fecha = formato.format(fechaActual);

		try {
			nCantidad = Integer.parseInt(cantidad);
		} catch (NumberFormatException e) {
			bCantidad = false;
		}
		try {
			nPrecio = Integer.parseInt(precio);
		} catch (NumberFormatException e) {
			bPrecio = false;
		}

		if (bPrecio == true && bCantidad == true) {
			precioFinal = nCantidad * nPrecio;
			pfinal = precioFinal + "";
		} else {
			pfinal = "No se puede realizar la compra ya que no ingreso numeros";
			precio = "0";
			cantidad = "0";
		}

		RequestDispatcher despachador = getServletContext().getRequestDispatcher(html);
		request.setAttribute("articulo", articulo);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("precio", precio);
		request.setAttribute("pFinal", pfinal);
		request.setAttribute("nombre", nombre);
		request.setAttribute("apellido", apellido);
		request.setAttribute("tarjeta", tarjeta);
		request.setAttribute("numeroTarjeta", tarjetaAst + ultimos);
		request.setAttribute("fecha", fecha);
		request.setAttribute("ip", InetAddress.getLocalHost().getHostAddress());
		despachador.forward(request, response);

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

