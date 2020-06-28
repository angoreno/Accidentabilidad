package cl.mantenedorCliente;

public class DatosCliente {
	
	
	
	
	
	
	public DatosCliente(String nombreEmpresa, String rutEmpresa, String giroEmpresa, String direccionEmpresa,
			int telefonoEmpresa, String emailEmpresa, String contrasenaCliente) {
		
		this.nombreEmpresa = nombreEmpresa;
		this.rutEmpresa = rutEmpresa;
		this.giroEmpresa = giroEmpresa;
		this.direccionEmpresa = direccionEmpresa;
		this.telefonoEmpresa = telefonoEmpresa;
		this.emailEmpresa = emailEmpresa;
		this.contrasenaCliente = contrasenaCliente;
	}
	
	

	public DatosCliente(String nombreEmpresa, String giroEmpresa, String direccionEmpresa, int telefonoEmpresa,
			String emailEmpresa, String contrasenaCliente) {
		
		this.nombreEmpresa = nombreEmpresa;
		this.giroEmpresa = giroEmpresa;
		this.direccionEmpresa = direccionEmpresa;
		this.telefonoEmpresa = telefonoEmpresa;
		this.emailEmpresa = emailEmpresa;
		this.contrasenaCliente = contrasenaCliente;
	}
	
	
	public String getNombreEmpresa() {
		return nombreEmpresa;
	}



	public void setNombreEmpresa(String nombreEmpresa) {
		this.nombreEmpresa = nombreEmpresa;
	}



	public String getRutEmpresa() {
		return rutEmpresa;
	}



	public void setRutEmpresa(String rutEmpresa) {
		this.rutEmpresa = rutEmpresa;
	}



	public String getGiroEmpresa() {
		return giroEmpresa;
	}



	public void setGiroEmpresa(String giroEmpresa) {
		this.giroEmpresa = giroEmpresa;
	}



	public String getDireccionEmpresa() {
		return direccionEmpresa;
	}



	public void setDireccionEmpresa(String direccionEmpresa) {
		this.direccionEmpresa = direccionEmpresa;
	}



	public int getTelefonoEmpresa() {
		return telefonoEmpresa;
	}



	public void setTelefonoEmpresa(int telefonoEmpresa) {
		this.telefonoEmpresa = telefonoEmpresa;
	}



	public String getEmailEmpresa() {
		return emailEmpresa;
	}



	public void setEmailEmpresa(String emailEmpresa) {
		this.emailEmpresa = emailEmpresa;
	}



	public String getContrasenaCliente() {
		return contrasenaCliente;
	}



	public void setContrasenaCliente(String contrasenaCliente) {
		this.contrasenaCliente = contrasenaCliente;
	}

	

	@Override
	public String toString() {
		return "DatosCliente [nombreEmpresa=" + nombreEmpresa + ", rutEmpresa=" + rutEmpresa + ", giroEmpresa="
				+ giroEmpresa + ", direccionEmpresa=" + direccionEmpresa + ", telefonoEmpresa=" + telefonoEmpresa
				+ ", emailEmpresa=" + emailEmpresa + ", contrasenaCliente=" + contrasenaCliente + "]";
	}






	private String nombreEmpresa;
	
	private String rutEmpresa;
	
	private String giroEmpresa;
	
	private String direccionEmpresa;
	
	private int telefonoEmpresa;
	
	private String emailEmpresa;
	
	private String contrasenaCliente;
	

}
