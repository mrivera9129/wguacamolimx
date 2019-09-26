package controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import modelos.ConnectionManager;

/**
 * Servlet implementation class uploadFile
 */
@WebServlet("/uploadFile")
@MultipartConfig
public class uploadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uploadFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con = null;
		try {
			con = (Connection) ConnectionManager.getConnection();
			String sql = " select * from contacts where id = 1 ";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();
	        HttpSession hs = request.getSession(false);
			hs.setAttribute("usuario", null);
	        while (rs.next()) {
	            byte[] imgData = rs.getBytes("photo"); // blob field
	            String encode = Base64.getEncoder().encodeToString(imgData);
	            hs.setAttribute("imgBase", encode);
	            System.out.println(encode);
	        }
	        rs.close();
	        ps.close();
			con.close();
			
		}catch(Exception e){
			System.out.println("Erorr");
		}
		response.sendRedirect("sImage.jsp");
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//tutorial
		//https://www.codejava.net/coding/upload-files-to-database-servlet-jsp-mysql
		//String firstName = request.getParameter("firstName");
        //String lastName = request.getParameter("lastName");
		//https://www.journaldev.com/1964/servlet-upload-file-download-example
         
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        String message = null;
        
    	Connection conn = null;
		
        try {
        	// connects to the database
        	conn = (Connection) ConnectionManager.getConnection();
            // constructs SQL statement
            String sql = "INSERT INTO contacts (photo) values (?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(1, inputStream);
            }
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            //request.setAttribute("Message", message);
            response.getWriter().append("Served at: " + message).append(request.getContextPath());
        
        }
		
		//doGet(request, response);
	}

}
