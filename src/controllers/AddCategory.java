package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Category;
import models.CategoryDao;
import models.User;
import models.UserDao;

/**
 * Servlet implementation class AddCategory
 */
@WebServlet("/AddCategory")
public class AddCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Category c= new Category();
		c.setCat_title(request.getParameter("category"));
	//c.setCat_title("cat");
		
		int result = CategoryDao.addCategory(c);
		
		if(result > 0)
		{
			request.setAttribute("message", "Category Added successfully!");
			request.getRequestDispatcher("/Category.jsp").forward(request, response);
			System.out.println("Category addded");
		}else{
			request.setAttribute("message", "Category couldn't be added!");
			request.getRequestDispatcher("/Category.jsp").forward(request, response);
			System.out.println("Category not addded");
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
