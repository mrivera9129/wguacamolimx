package modelos;

import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpSession;

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
	InputStream img;
	String video = "";
	int id_usuario = 0;
	String enc = "";
	
	
	public Post() {
		super();
	}
	
	
	public Post(int id, String estado, String tipo, String comida, String nombre, String autor, String ingredientes,
			String contenido, InputStream img, String video, int id_usuario) {
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
		this.id_usuario = id_usuario;
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


	public InputStream getImg() {
		return img;
	}


	public void setImg(InputStream img) {
		this.img = img;
	}


	public String getVideo() {
		return video;
	}



	public void setVideo(String video) {
		this.video = video;
	}
	
	
	

	public int getId_usuario() {
		return id_usuario;
	}


	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}
	
	


	public String getEnc() {
		return enc;
	}


	public void setEnc(String enc) {
		this.enc = enc;
	}


	/*Method save post */
	public boolean savePost() {
		boolean save = false;
		try{
			Connection con = null;
			con = (Connection) ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO post (estado, tipo, comida, nombre, autor, ingredientes, contenido, img, video, id_usuario) VALUES (?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, estado);
			ps.setString(2, tipo);
			ps.setString(3, comida);
			ps.setString(4, nombre);
			ps.setString(5, autor);
			ps.setString(6, ingredientes);
			ps.setString(7, contenido);
			ps.setBlob(8, img);
			ps.setString(9, video);
			ps.setInt(10, id_usuario);
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
	
	/*Method see all recipes */
	public List<Post> misRecetas(int idu) {
		List<Post> list = new ArrayList<Post>();
		try{
			Connection con = null;
			con = (Connection) ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("select id, nombre, autor, estado, comida from post where tipo=? and id_usuario=?");
			ps.setString(1, "R");
			ps.setInt(2, idu);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				//Post b = new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
				Post b = new Post();
				b.setId(rs.getInt(1));
				b.setNombre(rs.getString(2));
				b.setAutor(rs.getString(3));
				b.setEstado(rs.getString(4));
				b.setComida(rs.getString(5));
				list.add(b);
			}
			/* Close connection */
			ps.close();
			con.close();
			/* Catch error connection or query is wrong */
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	public List<Post> misBlogs(int idu) {
		List<Post> list = new ArrayList<Post>();
		try{
			Connection con = null;
			con = (Connection) ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("select id, nombre, autor, estado, comida from post where tipo=? and id_usuario=?");
			ps.setString(1, "B");
			ps.setInt(2, idu);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				//Post b = new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
				Post b = new Post();
				b.setId(rs.getInt(1));
				b.setNombre(rs.getString(2));
				b.setAutor(rs.getString(3));
				b.setEstado(rs.getString(4));
				b.setComida(rs.getString(5));
				list.add(b);
			}
			/* Close connection */
			ps.close();
			con.close();
			/* Catch error connection or query is wrong */
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	
	/*Method see all recipes */
	public boolean miPost() {
		boolean save = false;
		try{
			Connection con = null;
			con = (Connection) ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("select id, nombre, autor, estado, tipo, comida, ingredientes, contenido, img, video from post where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				this.id = rs.getInt(1);
				this.nombre = rs.getString(2);
				this.autor = rs.getString(3);
				this.estado = rs.getString(4);
				this.tipo = rs.getString(5);
				this.comida = rs.getString(6);
				this.ingredientes = rs.getString(7);
				this.contenido = rs.getString(8);
				//b.setImg(img);
				this.video = rs.getString(10);
			}
			/* Close connection */
			ps.close();
			con.close();
			/* Catch error connection or query is wrong */
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return save;
	}
	
	public String getImage(int idb) {
		Connection con = null;
		String encode = "";
		try {
			con = (Connection) ConnectionManager.getConnection();
			String sql = "select * from post where id = " + idb;
	        PreparedStatement ps = con.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	            byte[] imgData = rs.getBytes("img"); // blob field
	            encode = Base64.getEncoder().encodeToString(imgData);
	        }
	        rs.close();
	        ps.close();
			con.close();
			
		}catch(Exception e){
			System.out.println("Erorr");
		}
		
		return encode;
	}
	
	
	public List<Post> todasRecetas() {
		List<Post> list = new ArrayList<Post>();
		try{
			Connection con = null;
			con = (Connection) ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("select id, nombre, autor, estado, comida from post where tipo=?");
			ps.setString(1, "R");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				//Post b = new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
				Post b = new Post();
				b.setId(rs.getInt(1));
				b.setNombre(rs.getString(2));
				b.setAutor(rs.getString(3));
				b.setEstado(rs.getString(4));
				b.setComida(rs.getString(5));
				b.setEnc(getImage(rs.getInt(1)));
				list.add(b);
			}
			/* Close connection */
			ps.close();
			con.close();
			/* Catch error connection or query is wrong */
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	public List<Post> todosBlogs() {
		List<Post> list = new ArrayList<Post>();
		try{
			Connection con = null;
			con = (Connection) ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("select id, nombre, autor, estado, comida from post where tipo=?");
			ps.setString(1, "B");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				//Post b = new Post(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
				Post b = new Post();
				b.setId(rs.getInt(1));
				b.setNombre(rs.getString(2));
				b.setAutor(rs.getString(3));
				b.setEstado(rs.getString(4));
				b.setComida(rs.getString(5));
				b.setEnc(getImage(rs.getInt(1)));
				list.add(b);
			}
			/* Close connection */
			ps.close();
			con.close();
			/* Catch error connection or query is wrong */
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	
	
	
	
	
}
