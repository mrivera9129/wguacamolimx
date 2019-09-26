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

/**
 * Servlet implementation class verPublicacion
 */
@WebServlet("/ver")
public class verPublicacion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public verPublicacion() {
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
		try {
			// Verificar que exista una session
			HttpSession hs = request.getSession();
			if (hs.getAttribute("session") != null) {
				int id = Integer.parseInt(request.getParameter("id"));
				// ver?id=52
				Post ps = new Post();
				ps.setId(id);
				boolean val = ps.miPost();
				HttpSession session=request.getSession();  
		        session.setAttribute("post", ps);
		        String img = ps.getImage(id);
		        session.setAttribute("vimg", img);
		        if(ps.getTipo() == "R"){
		        	RequestDispatcher rd = request.getRequestDispatcher("receta.jsp");
					rd.forward(request, response);
		        } else {
		        	RequestDispatcher rd = request.getRequestDispatcher("blog.jsp");
					rd.forward(request, response);
		        }
				
			} else {
				System.out.println("Error");
				RequestDispatcher rd = request.getRequestDispatcher("/error");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			System.out.println("Error");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
