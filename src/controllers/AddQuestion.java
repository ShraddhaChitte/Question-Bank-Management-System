package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import conn.ConnectionProvider;
import models.Question;
import models.QuestionDao;

/**
 * Servlet implementation class AddQuestion
 */
@WebServlet("/AddQuestion")
public class AddQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String subject = request.getParameter("subject");
		String question = request.getParameter("question");
		String marks = request.getParameter("marks");
		String rdate = request.getParameter("rdate");
		String unit = request.getParameter("unit");	
		String answer = request.getParameter("answer");
		
		Question q= new Question();
		q.setQuestion(request.getParameter("question"));
		q.setMarks(request.getParameter("marks"));
		q.setRdate(request.getParameter("rdate"));
		q.setSubject(request.getParameter("subject"));
		q.setUnit(request.getParameter("unit"));
		q.setAnswer(request.getParameter("answer"));
		
		
		int result = QuestionDao.saveQuestion(q);
		
		if(result > 0)
		{
			request.setAttribute("message", "Question Added successfully!");
			request.getRequestDispatcher("/AddQuestions.jsp").forward(request, response);
			System.out.println("Question addded");
		}else{
			request.setAttribute("message", "Question couldn't be added!");
			request.getRequestDispatcher("/AddQuestions.jsp").forward(request, response);
			System.out.println("Question not addded");
		}
	
		
		
		try {
			
			String query="select * from question where question='"+question+"'";
			System.out.println(query);
			PreparedStatement ps4=con.prepareStatement(query);
			ResultSet rs4=ps4.executeQuery();
			if(rs4.next())
			{
				
				response.sendRedirect("AddQuestion.jsp?already=added");	
			}
			
				else{
			String qur = "insert into question(subject,question,marks,rdate,unit,answer) values('"
					+ subject
					+ "','"
					+ question
					+ "','"
					+ marks
					+ "','"
					+ rdate
					+ "','"
					+ unit
					+ "','"
					+ answer
					+ "')";

			PreparedStatement ps = con.prepareStatement(qur);
			ps.executeUpdate();
			response.sendRedirect("AdminHome.jsp?qadd=done");

				} 
		
}

		catch (Exception e) {
			System.out.println("Exc:" + e);
}
	}
}
	