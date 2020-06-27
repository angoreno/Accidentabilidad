package cl.accidenta.controller;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.accidenta.modelos.ModeloAccidenta;
import cl.accidenta.objetos.usuario;
import cl.singleton.conexion.conexion;

/**
 * Servlet implementation class ControllerAccidenta
 */
@WebServlet("/ControllerAccidenta")
public class ControllerAccidenta extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ModeloAccidenta modeloaccidenta; 
	
	private Connection conectaServlet=conexion.getConexion(); 
	
	@Override
	public void init () throws ServletException{
		super.init();
		
		try {
			modeloaccidenta=new ModeloAccidenta (conectaServlet); 
			
		}catch (Exception e){ 
			throw new ServletException(e); 
			
		}
	}
	 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAccidenta() {
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
		login(request, response);
	}

	private void login(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String usuario=request.getParameter("rut"); 
		String contrasena=request.getParameter("contrasena");
		
		String usuarioBD=null;
		String contrasenaBD=null; 
		int idBD=0; 
		
		List<usuario>loginUsuario;
		
		try {
			loginUsuario=ModeloAccidenta.getLoginUsuario(usuario); 
			for(usuario userBD:loginUsuario) {
				usuarioBD=userBD.getUsuario();
				contrasenaBD=userBD.getContrasena();
				idBD=userBD.getId(); 
			}
			if(usuario.equals(usuarioBD)&&contrasena.equals(contrasenaBD)) {
				System.out.println("Conexión exitosa");
			}else {
				System.out.println("Conexión fallida"); 
			}
		}catch (Exception e){
			
		}
		
	}

}
