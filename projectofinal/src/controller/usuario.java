package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelos.Usuarios;

/**
 * Servlet implementation class usuario
 */
@WebServlet(name = "registrar", urlPatterns = { "/registrar" })
public class usuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usuario() {
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
		
		try{
			/* Recuperar los parametros del form */
			String nombre = request.getParameter("nombre");
			String apellidos = request.getParameter("apellidos");
			int edad = Integer.parseInt(request.getParameter("edad"));
			String sexo = request.getParameter("sexo");
			String ocupacion = request.getParameter("ocupacion");
			String email = request.getParameter("email");
			String usuario = request.getParameter("usuario");
			String password = request.getParameter("password");
			String sobre = request.getParameter("sobre");
			
			Usuarios us = new Usuarios(0, nombre, apellidos, edad, sexo, ocupacion, email, usuario, password, sobre);
			boolean res = us.saveUser();
			
			if(res) {
				RequestDispatcher rd =  request.getRequestDispatcher("exito.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd =  request.getRequestDispatcher("error.jsp");
				rd.forward(request, response);
			}
			
		} catch(Exception e) {
			System.out.println(e.getMessage());
			RequestDispatcher rd =  request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
		
		//doGet(request, response);
	}

}
