package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RedirectServlet
 */
@WebServlet("/RedirectServlet")
public class RedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RedirectServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		String producto = productoAdquirido(request.getParameter("producto").toString(), cantidad);
		int precio = Integer.parseInt(request.getParameter("precio"));
		String nombre = request.getParameter("nombres");
		String apellido = request.getParameter("apellido");
		String tarjetaCredito = request.getParameter("tarjetaCredito");
		String numTarjeta = request.getParameter("numTarjeta");
		InetAddress direccion = InetAddress.getLocalHost();
		String ip = direccion.getHostAddress();
		LocalDate fecha = LocalDate.now();
		DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		String fechaTramite = formato.format(fecha);
		String nextHTML = "/comprarealizada.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		int precioTotal = obtenerPrecioTotal(precio, cantidad);
		String censoredNum = censurarNumero(numTarjeta);
		request.setAttribute("nombreCompleto", nombre + " " + apellido);
		request.setAttribute("tarjetaCredito", tarjetaCredito);
		request.setAttribute("numTarjeta", censoredNum);
		request.setAttribute("ip", ip);
		request.setAttribute("precioTotal", precioTotal);
		request.setAttribute("producto", producto);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("precioPorUnidad", precio);
		request.setAttribute("fechaTramite", fechaTramite);
		
		dispatcher.forward(request, response);
	}
	protected String censurarNumero(String numTarjeta) {
		String x ="";
		String[] cifras = numTarjeta.split(" ");
		for (int i = 0; i < cifras.length-1; i++) {
			x+="**** ";
		}
		x+=cifras[3];
		return x;
	}

	protected String productoAdquirido(String producto, int cantidad) {
		switch (producto) {
			case "1": {
				if(cantidad!=1) {
					producto="pares de zapatos";
				}else {
					producto="par de zapatos";
				}
				break;
			}
			case "2": {
				if(cantidad!=1) {
					producto="camisas";
				}else {
					producto="camisa";
				}
				break;
			}
			case "3": {
				if(cantidad!=1) {
					producto="relojes";
				}else {
					producto="reloj";
				}
				break;
			}
			case "4": {
				if(cantidad!=1) {
					producto="libros";
				}else {
					producto="libro";
				}
				break;
			}
			case "5": {
				if(cantidad!=1) {
					producto="computadoras";
				}else {
					producto="computador";
				}
				break;
			}
		}
		return producto;
	}

	protected int obtenerPrecioTotal(int precio, int cantidad) {
		int precioTotal = precio * cantidad;
		return precioTotal;
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
