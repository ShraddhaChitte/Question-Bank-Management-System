<%--<%@page import="org.hibernate.engine.jdbc.connections.spi.ConnectionProvider"%> --%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script><script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</head>
<body style="background-image: url('./img/tent.jpg');">

	 <jsp:include page="/adminheader.jsp" />


	<div  style="margin-top: 70px;margin-left: 250px;background-color:lightgrey;width:60%; overflow-x:auto;">
		




						<h2 style="text-align:center;">All Questions</h2>
						<%
							String id = request.getParameter("id");
							Connection con = ConnectionProvider.getConnection();
							String qur1 = "select *from question where id='" + id + "'";
							PreparedStatement ps1 = con.prepareStatement(qur1);
							ResultSet rs1 = ps1.executeQuery();
						%>
						<table border="1px solid black"
							style="text-align: center; fill: auto" class="table">
				

							<%
								int i = 0;
								while (rs1.next()) {
									i++;
									String subject = rs1.getString("subject");
									String question = rs1.getString("question");
									String answer = rs1.getString("answer");
									String marks = rs1.getString("marks");
									String date = rs1.getString("rdate");
									String unit = rs1.getString("Unit");
							%>

							<form action="UpdateQuestion" method="post">
								
	<thead class="thead-dark">
									<th>SUBJECT : </th><td><input type="text" name="subject" class="form-control" value=<%=subject%>
										readonly></td></tr><tr>
									<th>QUESTION : </th><td><input type="text" name="question" class="form-control" value=<%=question%>></td>
									</tr><tr>
									<th>ANSWER : </th><td><input type="text" name="answer" class="form-control" value=<%=answer%>></td>
									</tr><tr>
									<th>MARKS : </th><td><input type="text" name="marks" class="form-control" value="<%=marks%>"></td>
									</tr><tr>
									<th>UNIT : </th><td><input type="text" name="unit" class="form-control" value="<%=unit%>"></td>
									</tr><tr>
									<input type="hidden" name="id" value="<%=id%>">
									</tr>
									<tr>
									<th>UPDATE : </th><td><button type="submit"  class="btn btn-info">Update</button></td>
								</tr>
								</thead>
							</form>






							<%
								}
							%>

						</table>
					
	</div>
</body>
</html>