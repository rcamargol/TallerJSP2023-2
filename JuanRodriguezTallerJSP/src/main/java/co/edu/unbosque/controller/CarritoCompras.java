package co.edu.unbosque.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.unbosque.modelo.CalculadorePrecios;

/**
 * Servlet implementation class CarritoCompras
 */
@WebServlet("/CarritoCompras")
public class CarritoCompras extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarritoCompras() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try {
		String articulos=request.getParameter("articulos");
		
		
		String cantidad=request.getParameter("cantidad");
	    int canti=Integer.parseInt(cantidad);
	    
	    String precio=request.getParameter("precio");
	    double valor=Double.parseDouble(precio);
	    String nombre=request.getParameter("nombreCliente");
	    String apellidos=request.getParameter("Apellidoscliente");
	    
	    String tarjeta1=request.getParameter("franquicia");
	    
	    String TarjetaCred=request.getParameter("TarjetaCredito");
	    double tarjeta=Double.parseDouble(TarjetaCred);
	    String confirmacionT=request.getParameter("confirmar");
	    double confirmacion=Double.parseDouble(confirmacionT);
	    
	    // validando en servelt 
	    
	    
	    
	    // hace el caculo 
	    
	    
	    
	    CalculadorePrecios calculadora = new CalculadorePrecios();
	 
	    
	    
	    request.setAttribute("totalFactura",    calculadora.calcularTotal(canti,valor));
	    //request.setAttribute("tarjeta", tarjeta);
	    
	    
	    
	    // redirige ( crear un serverlet a partir de un jsp mantenidno la misma ruta
	    request.getRequestDispatcher("Respuesta.jsp").forward(request, response);

	    
	  //  response.getWriter().append("El total es "+ request.getAttribute("totalFactura"));
	   
	    
	    
	    
	    
	    
		
		} catch (Exception e) {
			// TODO: handle exception
		}
	    
	  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
