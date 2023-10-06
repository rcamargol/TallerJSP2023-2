package com.MiPaquete;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/processPurchase")
public class ProcessPurchaseServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Establecer codificación y tipo de contenido
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // Obtener parámetros
        String articulo = request.getParameter("articulo");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));

        // Procesar la entrada del precio para manejar tanto "20000" como "20.000"
        String precioStr = request.getParameter("precio").replace(".", "");
        double precio = Double.parseDouble(precioStr);

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String tarjeta = request.getParameter("tarjeta");
        String numeroTarjeta = request.getParameter("numeroTarjeta");
        
        double total = cantidad * precio;

        // Formatear sin decimales
        NumberFormat formatter = NumberFormat.getNumberInstance(new Locale("es", "CO"));
        formatter.setMaximumFractionDigits(0);
        formatter.setMinimumFractionDigits(0);

        // Preparación de salida
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html><head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<style>");
        out.println("body {font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0;}");
        out.println(".container {max-width: 500px; margin: 50px auto; background-color: #fff; padding: 20px 30px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);}");
        out.println("h1 {text-align: center; margin-bottom: 20px;}");
        out.println(".highlight {color: #007BFF;}");
        out.println("</style>");
        out.println("</head><body>");
        out.println("<div class='container'>");
        out.println("<h1>Detalle de la Compra</h1>");
        out.println("<p>Señor Usuario: <span class='highlight'>" + nombre + " " + apellido + "</span></p>");
        out.println("<p>Su compra fue realizada satisfactoriamente por un valor de <span class='highlight'>" + formatter.format(total) + "</span>. Correspondiente a " + cantidad + " " + articulo + ".</p>");
        out.println("<p>El precio por unidad fue de: <span class='highlight'>" + formatter.format(precio) + "</span></p>");
        out.println("<p>La compra fue realizada con la tarjeta de crédito número: **** **** **** " + 
                    numeroTarjeta.substring(numeroTarjeta.length() - 4) + " de la franquicia <span class='highlight'>" + tarjeta + "</span>.</p>");
        
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        out.println("<p>Fecha de la compra: <span class='highlight'>" + sdf.format(new Date()) + "</span></p>");
        out.println("<p>Dirección IP: <span class='highlight'>" + request.getRemoteAddr() + "</span></p>");

        // Enlace para una nueva compra
        out.println("<p style='margin-top: 20px; text-align: center;'><a href='./formulario.jsp' style='text-decoration: none; color: #007BFF;'>Realizar una nueva compra</a></p>");

        out.println("</div>");
        out.println("</body></html>");
    }
}
