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

import conn.ConnectionProvider;

/**
 * Servlet implementation class UpdateQuestion
 */
@WebServlet("/UpdateQuestion")
public class UpdateQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;



	public void init(ServletConfig config) throws ServletException {

		con = ConnectionProvider.getConnection();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String subject = request.getParameter("subject");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		String id=request.getParameter("id");
		String marks = request.getParameter("marks");
		String rdate = request.getParameter("rdate");
		String unit = request.getParameter("unit");
		try {
			
			String qur = "UPDATE `question` SET `question`='"+question+"',`answer`='"+answer+"',`marks`='"+marks+"',`unit`='"+unit+"' where id='"+id+"'";

			PreparedStatement ps = con.prepareStatement(qur);
			ps.executeUpdate();
			response.sendRedirect("AdminViewQuestions.jsp?qadd=done");
	
				} 

		catch (Exception e) {
			System.out.println("Exc:" + e);
}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
	