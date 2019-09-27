package modelos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConnectionManager {

	private static Connection con;
	
	public ConnectionManager() {
		super();
	}

	/* Method to create connection to db */
	public static Connection getConnection() {
		try {
			/* url, name db and user */
			String url = "jdbc:mysql://localhost:3306/guacalomimx?user=root&useUnicode=true&characterEncoding=utf8";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url);
		} catch (ClassNotFoundException ce) {
			/* catch error if driver doesn't work */
			System.out.println("error al cargar controlador");
			ce.printStackTrace();

		} catch (SQLException sql) {
			/* catch error if query is wrong */
			System.out.println("error al conectarse");
			sql.printStackTrace();
		}
		return con;
	}

}
