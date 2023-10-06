package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;
import java.net.InetAddress;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class realisa_compra
 */
@WebServlet("/realisa_compra")
public class realisa_compra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public realisa_compra() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String NextHTML="/RespuestaServlet.jsp";
		String g="";
		String producto="";
		int c= Integer.parseInt(request.getParameter("cantidad"));
		int p= Integer.parseInt(request.getParameter("precio"));
		int j= p*c;
		
		PrintWriter w= response.getWriter();
		String nombre=request.getParameter("nombrec")+" "+request.getParameter("apellidoc")+"\n";
		if(Integer.parseInt(request.getParameter("prod"))==1) {
			producto+=request.getParameter("cantidad")+" "+"zapatos"+"\n";
		}
		if(Integer.parseInt(request.getParameter("prod"))==2) {
			producto+=request.getParameter("cantidad")+" "+"camisa"+"\n";
		}
		if(Integer.parseInt(request.getParameter("prod"))==3) {
			producto+=request.getParameter("cantidad")+" "+"reloj"+"\n";
		}
		if(Integer.parseInt(request.getParameter("prod"))==4) {
			producto+=request.getParameter("cantidad")+" "+"computador"+"\n";
		}
		if(Integer.parseInt(request.getParameter("prod"))==5) {
			producto+=request.getParameter("cantidad")+" "+"libro"+"\n";
		}
		
		String preciou=request.getParameter("precio");
		
		String compra=j+"";
		
		int r= request.getParameter("numero").length();
		String u= ""+request.getParameter("numero").charAt(r-4)+""+request.getParameter("numero").charAt(r-3)+""+request.getParameter("numero").charAt(r-2)+""+request.getParameter("numero").charAt(r-1);
	
		String tn=u;
		String t=request.getParameter("tarjeta");
		LocalDate a= LocalDate.now();
		String s=a.toString();
		String hora=s;
		InetAddress f= InetAddress.getLocalHost();
		String v=f+"";
		String[] q= v.split("/");
		String h= q[1];
		String ip=""+h;
		RequestDispatcher dispatcher= getServletContext().getRequestDispatcher(NextHTML);
		request.setAttribute("tarjeta", t);
		request.setAttribute("compra", compra);
		request.setAttribute("precio", preciou);
		request.setAttribute("producto", producto);
		request.setAttribute("nombre", nombre);
		request.setAttribute("ip", ip);
		request.setAttribute("tiempo", hora);
		request.setAttribute("tarjetan", tn);
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
