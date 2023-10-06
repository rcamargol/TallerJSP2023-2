
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DemoServet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DemoServet() {
		super();
	}

	protected void goGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.getWriter().append("Served at").append(request.getContextPath());
		String Articulo = request.getParameter("Articulo");
		int Cantidad = request.getIntHeader("cantidad");
		int Precio = request.getIntHeader("precio");
		String Cliente = request.getParameter("cliente");
		String apellido = request.getParameter("apellido");
		String TarjetadeCredito = request.getParameter("tarjeta de credito");
		String numero = request.getParameter("numero");
		InetAddress dir = InetAddress.getLocalHost();
		PrintWriter writer = response.getWriter();
		writer.println("Señor Usuario: " + Cliente + apellido + "\n"
				+ "Su compra fue realizada satisfactoriamente por un valor de " + Precio + ". Correspondiente a "
				+ Cantidad + Articulo + "\n" + "Su precio por unidad fue de: " + Precio / Cantidad
				+ "La compra fue realizada con la compra de crédito numero: **** **** ****" + numero.charAt(15)
				+ numero.charAt(16) + numero.charAt(17) + numero.charAt(18) + " de la \n" + "franquicia"
				+ TarjetadeCredito + ". Fecha de la compra: " + LocalDateTime.now() + "\n" + "Direccion IP:");
		writer.close();
	}

}
