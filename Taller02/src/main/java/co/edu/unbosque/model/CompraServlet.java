package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CompraServlet
 */

	
	
@WebServlet("/CompraServlet")
public class CompraServlet extends HttpServlet {
	
	private String articulo_c  , nombres ,apellidos ,t_tarjeta 
	, tarjeta  , mostrar_tarjeta ,fecha , ip , articulos[] ={"zapato", "camisa",  "reloj", "libro","computador"};
	
	private int articulo,cantidad , valor , valor_total;
	private Date fechaActual ;
	private SimpleDateFormat formatoFecha;
	private InetAddress direccionIP;
	 
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompraServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nextHTML = "/resultadoCompra.jsp";
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		fechaActual = new Date();
		formatoFecha= new SimpleDateFormat("dd/MM/yyyy");
		fecha = formatoFecha.format(fechaActual);
		
	      try {
	           
	           direccionIP = InetAddress.getLocalHost();
	           ip= direccionIP.getHostAddress();  
	        } catch (UnknownHostException e) {
	            e.printStackTrace();
	        }
	     
		articulo = Integer.parseInt(request.getParameter("articulos"));
		cantidad = Integer.parseInt(request.getParameter("cantidad"));
		valor = Integer.parseInt(request.getParameter("valor"));
		nombres = request.getParameter("nombres");
		apellidos = request.getParameter("apellidos");
		t_tarjeta = request.getParameter("tarjeta");
		tarjeta = request.getParameter("tarjeta1");
		
		
		valor_total = cantidad * valor;
		mostrar_tarjeta = "**** ***** **** ";
		for(int i = 15; i<19 ; i++) {
			mostrar_tarjeta += tarjeta.charAt(i);
		}
		articulo_c = articulos[articulo-1];
		

		request.setAttribute("cantidad" , cantidad);
		request.setAttribute("articulo" , articulo_c);
		request.setAttribute("valor_u", valor);
		request.setAttribute("total" , valor_total);
		request.setAttribute("nombre" , nombres);
		request.setAttribute("apellidos" , apellidos);
		request.setAttribute("tarjeta" , t_tarjeta);
		request.setAttribute("n_tarjeta" , mostrar_tarjeta);
		request.setAttribute("fecha", fecha);
		request.setAttribute("ip_address", ip);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		dispatcher.forward(request, response);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
