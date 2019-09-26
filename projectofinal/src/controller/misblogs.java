package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelos.Post;
import modelos.Usuarios;

/**
 * Servlet implementation class misblogs
 */
@WebServlet("/mis-blogs")
public class misblogs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public misblogs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			// Verificar que exista una session
			HttpSession hs = request.getSession();
			if (hs.getAttribute("session") != null) {
				//System.out.println(hs.getAttribute("session"));
				Usuarios us = (Usuarios) hs.getAttribute("usuario");
				Post ps = new Post();
				//Mostrar las recetas
				request.setAttribute("blogs", ps.misBlogs(us.getId()));
				RequestDispatcher rd = request.getRequestDispatcher("mis-blogs.jsp");
				rd.forward(request, response);

			} else {
				System.out.println("Error" + hs.getAttribute("session"));
				RequestDispatcher rd = request.getRequestDispatcher("/error");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			System.out.println("Error");
		}
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
