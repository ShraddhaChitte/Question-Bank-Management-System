package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Feedback;
import models.FeedbackDao;
import models.Question;
import models.QuestionDao;

/**
 * Servlet implementation class Feedback
 */
@WebServlet("/Feedback")
public class GiveFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GiveFeedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String experience = request.getParameter("experience");
		String comments = request.getParameter("comments");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		System.out.println("Before creating object");
		Feedback f= new Feedback();
		f.setExperience(request.getParameter("experience"));
		f.setComments(request.getParameter("comments"));
		f.setName(request.getParameter("name"));
		f.setEmail(request.getParameter("email"));
		
		
		
		int result = FeedbackDao.saveFeedback(f);
		
		if(result > 0)
		{
			request.setAttribute("message", "Feedback Given successfully!");
			request.getRequestDispatcher("/feedbackForm.jsp").forward(request, response);
			System.out.println("Feedback given");
		}else{
			request.setAttribute("message", "Feedback couldn't be given!");
			request.getRequestDispatcher("/feedbackForm.jsp").forward(request, response);
			System.out.println("Feedback not given");
		}
	
		
		
		try {
			
			String query="select * from feedback where email='"+email+"'";
			System.out.println(query);
			PreparedStatement ps4=con.prepareStatement(query);
			ResultSet rs4=ps4.executeQuery();
			if(rs4.next())
			{
				
				response.sendRedirect("feedbackForm.jsp?already=added");	
			}
			
				else{
			String qur = "insert into feedback(experience,comments,name,email) values('"
					+ experience
					+ "','"
					+ comments
					+ "','"
					+ name
					+ "','"
					+ email
					+ "')";

			PreparedStatement ps = con.prepareStatement(qur);
			ps.executeUpdate();
			response.sendRedirect("feedbackForm.jsp?qadd=done");

				} 
		
}

		catch (Exception e) {
			System.out.println("Exc:" + e);
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
