

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/redirectServlet")
public class RedirectServer extends HttpServlet{
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RedirectServer() {
		super();
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextHtml = "src/main/webapp/respuesta.jsp";
		RequestDispatcher dispacher = getServletContext().getRequestDispatcher(nextHtml);
		request.setAttribute("respuesta ", "Respuesta desde el servet.");
		dispacher.forward(request, response);
	}

}
