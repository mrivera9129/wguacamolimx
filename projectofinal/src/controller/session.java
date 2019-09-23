package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelos.Usuarios;

/**
 * Servlet implementation class session
 */
@WebServlet("/session")
public class session extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public session() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		/* Crear session si los datos son correctos */
		try {
			String usu, pass;
			boolean val = false;
			usu = request.getParameter("us");
			pass = request.getParameter("ps");
			Usuarios us = new Usuarios();
			val = us.validateUser(usu, pass);
			if (val) {
				HttpSession session=request.getSession();  
		        session.setAttribute("usuario", us);  
		        session.setAttribute("session", true);
				/*
				 * HttpSession hs = request.getSession(true);
				hs.setAttribute("usuario", lb.getEmail());
				HttpSession sesion = request.getSession(true);
				sesion.setAttribute("usuario", us);
				//hs.setAttribute("session", 1);
				*/
				System.out.println(us.getNombre() + us.getApellidos());
				response.sendRedirect("p-micuenta.jsp");
			} else {
				HttpSession hs = request.getSession(false);
				hs.setAttribute("usuario", null);
				response.sendRedirect("p-error.jsp");
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		// doGet(request, response);
	}

}
