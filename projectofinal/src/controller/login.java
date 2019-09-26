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
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd =  request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			//Inicializar variables e invocar el objeto de usuarios
			String usu, pass;
			boolean val = false;
			usu = request.getParameter("us");
			pass = request.getParameter("ps");
			Usuarios us = new Usuarios();
			val = us.validateUser(usu, pass);
			if (val) {
				//Crear la session de usuario
				HttpSession session=request.getSession();  
		        session.setAttribute("usuario", us);  
		        session.setAttribute("session", true);
				//System.out.println(us.getNombre() + us.getApellidos());
		        //Mandar a la sesion de mi cuenta
		        //RequestDispatcher rd =  request.getRequestDispatcher("/mi-cuenta");
				//rd.forward(request, response);
		        response.sendRedirect("./mi-cuenta");
			} else {
				//Mandar a página de error
				HttpSession hs = request.getSession(false);
				hs.setAttribute("usuario", null);
				RequestDispatcher rd =  request.getRequestDispatcher("/error");
				rd.forward(request, response);
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		//doGet(request, response);
	}

}
