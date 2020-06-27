package cl.singleton.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {

	public static Connection coneccion; 

	public static Connection getConexion() {
	
		try {
			if(coneccion==null) {
				Runtime.getRuntime().addShutdownHook(new getClose());
				Class.forName("oracle.jdbc.driver.OracleDriver"); 
				coneccion=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SQLConsu", "Consu1234");
				System.out.println("Conexión correcta"); 
			}
			
		}catch (Exception e){ 
			System.out.println("Error al conectar. Error: " + e + "."); 
			
			
		}
		return coneccion; 
	}
	
	static class getClose extends Thread{
		@Override
		public void run() {
			try {
				Connection conecta=conexion.getConexion(); 
				conecta.close();
				
			}catch (SQLException ex){
				System.out.println(ex); 
				
			}
		}
	}
	
	
}
