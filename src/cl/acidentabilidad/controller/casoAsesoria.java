package cl.acidentabilidad.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class casoAsesoria
 */
@WebServlet("/casoAsesoria")
public class casoAsesoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public casoAsesoria() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/html");
		
		PrintWriter salida=response.getWriter();
		salida.println("<html><body>");
		salida.println("Asesoria: "+request.getParameter("asesoria"));
		salida.println("<br><br>");
		salida.println("Motivo: "+request.getParameter("motivo"));
		salida.println("<br><br>");
		salida.println("Profesional a Cargo: "+request.getParameter("profesional"));
		salida.println("<br><br>");
		salida.println("Empresa solicitante: "+request.getParameter("empresa"));
		salida.println("<br><br>");
		
	
		
		
	}

}
