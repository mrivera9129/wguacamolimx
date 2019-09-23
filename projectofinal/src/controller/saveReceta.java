package controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class saveReceta
 */
@WebServlet("/saveReceta")
public class saveReceta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public saveReceta() {
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
		
		/*Receta*/
		String txt = request.getParameter("texto");
		response.getWriter().append("Receta: ").append(txt);
		
		//Code to upload a file
		//https://geekonjava.blogspot.com/2014/09/upload-file-in-java-gojfileupload.html
		/*
		String description = request.getParameter("description"); // Retrieves <input type="text" name="description">
	    Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
	    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
	    InputStream fileContent = filePart.getInputStream();
		*/
		
		//doGet(request, response);
	}

}
