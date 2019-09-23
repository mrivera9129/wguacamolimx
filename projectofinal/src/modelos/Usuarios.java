package modelos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class Usuarios {
	
	/* inicializar variables */
	int id = 0;
	String nombre = "";
	String apellidos = "";
	int edad = 0;
	String sexo = "";
	String ocupacion = "";
	String email = "";
	String usuario = "";
	String password = "";
	String sobre = "";
	
	public Usuarios() {
		super();
	}
	
	public Usuarios(int id, String nombre, String apellidos, int edad, String sexo, String ocupacion, String email,
			String usuario, String password, String sobre) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.edad = edad;
		this.sexo = sexo;
		this.ocupacion = ocupacion;
		this.email = email;
		this.usuario = usuario;
		this.password = password;
		this.sobre = sobre;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getOcupacion() {
		return ocupacion;
	}

	public void setOcupacion(String ocupacion) {
		this.ocupacion = ocupacion;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSobre() {
		return sobre;
	}

	public void setSobre(String sobre) {
		this.sobre = sobre;
	}
	
	/*Method save user */
	public boolean saveUser() {
		boolean save = false;
		try{
			Connection con = null;
			con = (Connection) ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO usuarios (nombre, apellidos, edad, sexo, ocupacion, email, usuario, password, sobre) VALUES (?,?,?,?,?,?,?,?,?)");
			ps.setString(1, nombre);
			ps.setString(2, apellidos);
			ps.setInt(3, edad);
			ps.setString(4, sexo);
			ps.setString(5, ocupacion);
			ps.setString(6, email);
			ps.setString(7, usuario);
			ps.setString(8, password);
			ps.setString(9, sobre);
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
	
	/*Method save user */
	public boolean updateUser() {
		boolean save = false;
		try{
			Connection con = null;
			con = (Connection) ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("update usuarios set nombre=?, apellidos=?, edad=?, sexo=?, ocupacion=?, email=?, usuario=?, password=?, sobre=? where id=?");
			ps.setString(1, nombre);
			ps.setString(2, apellidos);
			ps.setInt(3, edad);
			ps.setString(4, sexo);
			ps.setString(5, ocupacion);
			ps.setString(6, email);
			ps.setString(7, usuario);
			ps.setString(8, password);
			ps.setString(9, sobre);
			ps.setInt(10, id);
			/* execute query */
			int status = ps.executeUpdate();
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
	
	/*Method save user */
	public List<Usuarios> allUsers() {
		List<Usuarios> list = new ArrayList<Usuarios>();
		try{
			Connection con = null;
			con = (Connection) ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from usuarios");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Usuarios b = new Usuarios(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
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
	
	public boolean validateUser(String user, String pass) {
		
		boolean validate = false;
		Connection con = null;
		try{
		con = (Connection) ConnectionManager.getConnection();
		PreparedStatement ps = con.prepareStatement("SELECT * from usuarios WHERE usuario=? and password=?");
		ps.setString(1, user);
		ps.setString(2, pass);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			this.id = rs.getInt(1);
			this.nombre = rs.getString(2);
			this.apellidos = rs.getString(3);
			this.edad = rs.getInt(4);
			this.sexo = rs.getString(5);
			this.ocupacion = rs.getString(6);
			this.email = rs.getString(7);
			this.usuario = rs.getString(8);
			this.sobre = rs.getString(10);
			System.out.println(id);
			ps.close();
			validate = true;
		}
		
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return validate; 
		
	}
	
	
	
	
	
}
