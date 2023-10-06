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

import org.apache.catalina.connector.Request;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nextHTML="/respuesta.jsp";
		String usuarioN = request.getParameter("Usuarion");
		String usuarioA = request.getParameter("Usuarioa");
		String articulo = request.getParameter("Articulo");
		String cantidad = request.getParameter("Cantidad");
		String unidad = request.getParameter("Unidad");
		String franquicia = request.getParameter("Tarjetadc");
		String Numeroc = request.getParameter("Ncredito");
		String Cnumeroc = request.getParameter("Ccredito");
		InetAddress dir = InetAddress.getLocalHost();
		String dip = dir.getHostAddress();
		RequestDispatcher dispatcher =getServletContext().getRequestDispatcher(nextHTML);
		request.setAttribute("Usuarion",usuarioN);
		request.setAttribute("Usuarioa",usuarioA);
		request.setAttribute("Articulo",articulo);
		request.setAttribute("Cantidad",cantidad);
		request.setAttribute("Unidad",unidad);
		request.setAttribute("Tarjetadc",franquicia);
		request.setAttribute("Ncredito",Numeroc);
		request.setAttribute("Ccredito",Cnumeroc);
		request.setAttribute("dip", dip);
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
