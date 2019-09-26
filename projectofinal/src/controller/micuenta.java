package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class micuenta
 */
@WebServlet("/mi-cuenta")
public class micuenta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public micuenta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			//Verificar que exista una session
			HttpSession hs = request.getSession();
			
			if(hs.getAttribute("session") != null) {
			RequestDispatcher rd =  request.getRequestDispatcher("p-micuenta.jsp");
			rd.forward(request, response);
			} else {
				//System.out.println("Error");
				//response.sendRedirect("./error");
				System.out.println("Error");
				RequestDispatcher rd = request.getRequestDispatcher("/error");
				rd.forward(request, response);
			}
		} catch(Exception e) {
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
