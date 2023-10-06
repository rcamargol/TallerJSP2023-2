import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet_Form
 */
@WebServlet("/Servlet_Form")
public class Servlet_Form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_Form() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		String direccion=request.getRemoteAddr();
		ZonedDateTime fecha= ZonedDateTime.now();
		String f1= fecha.format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));
		PrintWriter out= response.getWriter();
		String arti= request.getParameter("articulo");
		String cantidad= request.getParameter("cantidad");
		String precio= request.getParameter("precio");
		String nombre= request.getParameter("nombre");
		String apellido= request.getParameter("apellido");
		String tipodepago= request.getParameter("metodopago");
		String tarjeta=request.getParameter("tarjeta");
		String confirmaciondetarjeta=request.getParameter("confirmacion");
		int can=Integer.parseInt(cantidad);
		int prec=Integer.parseInt(precio);
		int total=can*prec;
		try {
			if(tarjeta.equals(confirmaciondetarjeta)) {
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head>");
				out.println("<title>Respuesta de trabajo</title>");
				out.println("</head>");
				out.println("<body>");
				out.println("<h3>Señor usuario:"+nombre+" "+apellido +"</h3><br>");
				out.println("<h3>Su compra fue realizada satisfactoriamente por un valor de "+total+". Correspondiente a "+cantidad+" "+arti +"</h3><br>");					
				out.println("<h3>El precio por unidad fue de $"+precio +"</h3>");
				out.println("<h3>La compra fue realizada con la tarjeta de credito numero:"+confirmaciondetarjeta +" de la franquicia "+tipodepago+
							". Fecha de la compra: "+f1+"</h3>");			
				out.println("<h3>Dirreccion IP: "+direccion+"</h3>");
				out.println("</body>");
				out.println("</html>");
			}else {
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head>");
				out.println("<title>Error De validacion</title>");
				out.println("</head>");
				out.println("<body>");
				out.println("<h3>Señor Usuario por favor ingrese bien el campo de la tarjeta</h3><br>");
				out.println("</body>");
				out.println("</html>");
			}
		} finally {
			out.close();
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
