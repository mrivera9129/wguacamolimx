package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelos.Usuarios;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
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
			/*Clear session*/
			HttpSession session=request.getSession();  
	        session.setAttribute("usuario", null);
	        
			/* Recuperar los parametros del form */
			int id = Integer.parseInt(request.getParameter("id"));
			String nombre = request.getParameter("nombre");
			String apellidos = request.getParameter("apellidos");
			int edad = Integer.parseInt(request.getParameter("edad"));
			String sexo = request.getParameter("sexo");
			String ocupacion = request.getParameter("ocupacion");
			String email = request.getParameter("email");
			String usuario = request.getParameter("usuario");
			String password = request.getParameter("password");
			String sobre = request.getParameter("sobre");
			
			Usuarios us = new Usuarios(id, nombre, apellidos, edad, sexo, ocupacion, email, usuario, password, sobre);
			boolean res = us.updateUser();
			
			if(res) {  
		        session.setAttribute("usuario", us);  
		        session.setAttribute("session", true); 
		        response.sendRedirect("p-micuenta.jsp");
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
