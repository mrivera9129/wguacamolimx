package controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import modelos.Post;

/**
 * Servlet implementation class saveReceta
 */
@WebServlet("/saveReceta")
@MultipartConfig
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
		
		try {
			/*Receta*/
			//String txt = request.getParameter("texto");
			//response.getWriter().append("Receta: ").append(txt);
			
			/* Parametros para guardar receta */
			String estado = request.getParameter("estado");
			String tipo = request.getParameter("tipo");
			String comida = request.getParameter("comida");
			String nombre = request.getParameter("nombre");
			String autor = request.getParameter("autor");
			String ingredientes = request.getParameter("ingredientes");
			String contenido = request.getParameter("contenido");
			int id_usuario = Integer.parseInt(request.getParameter("id_usuario"));
			//String img = request.getParameter("imagen");
			String video = request.getParameter("video");
			//String img = "imagen";
			//String video = "video";
			
			InputStream img = null;
			Part filePart = request.getPart("imagen");
			
			if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	             
	            // obtains input stream of the upload file
	            img = filePart.getInputStream();
	        }
			
			Post ps = new Post(0, estado, tipo, comida, nombre, autor, ingredientes, contenido, img, video, id_usuario);
			boolean res = ps.savePost();
			
			if(res) {
				//RequestDispatcher rd =  request.getRequestDispatcher("p-recetas.jsp");
				//rd.forward(request, response);
				if(tipo.equals("R")) {
					response.sendRedirect("./mis-recetas");
				}
				if(tipo.equals("B")) {
					response.sendRedirect("./mis-blogs");
				}
			} else {
				RequestDispatcher rd =  request.getRequestDispatcher("error.jsp");
				rd.forward(request, response);
			}
			
		} catch(Exception e) {
			System.out.println(e.getMessage());
			RequestDispatcher rd =  request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
		
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
