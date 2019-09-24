package modelos;

import java.sql.PreparedStatement;

import com.mysql.jdbc.Connection;

public class Post {
	
	/* inicializar variables */
	int id = 0;
	String estado = "";
	String tipo = "";
	String comida = "";
	String nombre = "";
	String autor = "";
	String ingredientes = "";
	String contenido = "";
	String img = "";
	String video = "";
	
	
	
	public Post(int id, String estado, String tipo, String comida, String nombre, String autor, String ingredientes,
			String contenido, String img, String video) {
		super();
		this.id = id;
		this.estado = estado;
		this.tipo = tipo;
		this.comida = comida;
		this.nombre = nombre;
		this.autor = autor;
		this.ingredientes = ingredientes;
		this.contenido = contenido;
		this.img = img;
		this.video = video;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getEstado() {
		return estado;
	}



	public void setEstado(String estado) {
		this.estado = estado;
	}



	public String getTipo() {
		return tipo;
	}



	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	/*Method save user */
	public boolean savePost() {
		boolean save = false;
		try{
			Connection con = null;
			con = (Connection) ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO post (id, estado, tipo, comida, nombre, autor, ingredientes, contenido, img, video) VALUES (?,?,?,?,?,?,?,?,?)");
			ps.setString(1, estado);
			ps.setString(2, tipo);
			ps.setString(3, comida);
			ps.setString(4, nombre);
			ps.setString(5, autor);
			ps.setString(6, ingredientes);
			ps.setString(7, contenido);
			ps.setString(8, img);
			ps.setString(9, video);
			/* execute query */
			ps.execute();
			/* Close connection */
			ps.close();
			con.close();
			/* Catch error connection or query is wrong */
			save = true;
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return save;
	}



	public String getComida() {
		return comida;
	}



	public void setComida(String comida) {
		this.comida = comida;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public String getAutor() {
		return autor;
	}



	public void setAutor(String autor) {
		this.autor = autor;
	}



	public String getIngredientes() {
		return ingredientes;
	}



	public void setIngredientes(String ingredientes) {
		this.ingredientes = ingredientes;
	}



	public String getContenido() {
		return contenido;
	}



	public void setContenido(String contenido) {
		this.contenido = contenido;
	}



	public String getImg() {
		return img;
	}



	public void setImg(String img) {
		this.img = img;
	}



	public String getVideo() {
		return video;
	}



	public void setVideo(String video) {
		this.video = video;
	}
	
	
	
	
	
	
}
