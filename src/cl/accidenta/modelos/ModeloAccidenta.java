package cl.accidenta.modelos;

import java.sql.*;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.*;

import cl.accidenta.objetos.usuario;

public class ModeloAccidenta {
	
	private static Connection conex; 

	public ModeloAccidenta(Connection conectaServlet) {
		// TODO Auto-generated constructor stub
		
		this.conex=conectaServlet; 
	}

	public static List<usuario> getLoginUsuario(String usuario) throws Exception {
		// TODO Auto-generated method stub
		
		String user=usuario; 
		
		List<usuario>LogueoUsuario=new ArrayList<>(); 
		
		Statement myStatement=null; 
		ResultSet myResultSet=null; 
		
		String consultaBD="";
		
		myStatement=conex.createStatement(); 
		myResultSet=myStatement.executeQuery(consultaBD); 
		
		while(myResultSet.next()) {
			String usuarioDB=myResultSet.getString("USUARIO"); 
			String contrasena=myResultSet.getString("PASS"); 
			int id=myResultSet.getInt("CARGO_ID"); 
			
			usuario tempresultado=new usuario(usuarioDB,contrasena,id); 
			LogueoUsuario.add(tempresultado); 
		}
		
		return LogueoUsuario; 
		
	}

}
