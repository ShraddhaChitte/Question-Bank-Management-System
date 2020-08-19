package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import models.HBSession;
import models.User;
import models.UserDao;




/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");

		User user=UserDao.validateUser(email,password);
		if(user==null)
		{
			request.setAttribute("message", "Invalid username or password");
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
			System.out.println(request.getParameter("email"));

			
			
		}
		else
		{
			
				request.setAttribute("message", "Login Successful");
				request.setAttribute("admin", user);
				System.out.println(request.getParameter("email")+"before going to index");
				request.getRequestDispatcher("/StudentHome.jsp").forward(request, response);
				System.out.println(request.getParameter("email"+"after index"));
		}
		
		
	}
		
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
