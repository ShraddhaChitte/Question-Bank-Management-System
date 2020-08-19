package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conn.ConnectionProvider;

/**
 * Servlet implementation class DeleteItem
 */
@WebServlet("/DeleteItem")
public class DeleteItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection con;

	public void init(ServletConfig config) throws ServletException {

		con = ConnectionProvider.getConnection();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		System.out.println(id);

		try {
			String qur = "delete from question where id='" + id + "'";
			System.out.println(qur);
			PreparedStatement ps = con.prepareStatement(qur);
			ps.executeUpdate();
			response.sendRedirect("AdminViewQuestions.jsp?delete=ok");

		} catch (Exception e) {
			System.out.println("Exe:" + e);
		}
	}
}
