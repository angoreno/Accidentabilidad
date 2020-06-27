package cl.accidenta.objetos;

public class usuario {
	
	private String usuario; 
	private String contrasena; 
	private String nombre; 
	private int id;
	
	public usuario(String usuario, String contrasena, String nombre, int id) {
		super();
		this.usuario = usuario;
		this.contrasena = contrasena;
		this.nombre = nombre;
		this.id = id;
	}

	public usuario(String usuario, String contrasena, int id) {
		super();
		this.usuario = usuario;
		this.contrasena = contrasena;
		this.id = id;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "usuario [usuario=" + usuario + ", contrasena=" + contrasena + ", nombre=" + nombre + ", id=" + id
				+ ", toString()=" + super.toString() + "]";
	} 
	
}
