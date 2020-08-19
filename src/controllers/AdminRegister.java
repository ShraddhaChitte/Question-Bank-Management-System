package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Admin;
import models.AdminDao;


/**
 * Servlet implementation class AdminRegister
 */
@WebServlet("/AdminRegister")
public class AdminRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		Admin  a = new Admin();
		
		a.setEmail(request.getParameter("email"));
		
		a.setPassword(request.getParameter("password"));
		
		a.setId(Integer.parseInt(request.getParameter("id")));
		
		int result = AdminDao.saveAdmin(a);
		
		if(result > 0)
		{
			request.setAttribute("message", "User Registration is successful!");
			request.getRequestDispatcher("/adminLogin.jsp").forward(request, response);
		}else{
			request.setAttribute("message", "User Registration is not successful!");
			request.getRequestDispatcher("/AdminRegister.jsp").forward(request, response);
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
