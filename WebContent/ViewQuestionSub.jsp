<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script><script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</head>
<body style="background-image: url('./img/tent.jpg');">

	<jsp:include page="/studentheader.jsp" /> 

<div class="container" style="margin-top: 70px; margin-left: 250px; background-color:lightgrey;width:60%; overflow-x:auto;">
		
					<div class="form">
						<form action="ViewQuestionSub.jsp" method="post">
<table>
							<tr>

								<th>SUBJECT</th>
								<td><select class="form-control" name="subject" style="width: 100px; height: 30px">
										<option>Select</option>
										<option value="physics">Physics</option>
										<option value="chemistry">Chemistry</option>
										<option value="math">Math</option>
										<option value="biology">Biology</option>
										<option value="english">English</option>
								</select></td>
								
								<td><input type="submit" value="Show" class="btn btn-light" style="margin-left: 200px"></td>
								
							</tr>
</table>

							</tr>
						</form>
						

						<%
							String subject=request.getParameter("subject");
							System.out.println("Subjects" + subject);
							Connection con = ConnectionProvider.getConnection();
							String qur1 = "select *from question where subject='" + subject + "'";
							PreparedStatement ps1 = con.prepareStatement(qur1);
							ResultSet rs1 = ps1.executeQuery();
						%>
						<table border="1px solid black" style="text-align: center"  class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">No</th>
								<th scope="col">Subject</th>
								<th scope="col" >Question</th>
								<th scope="col">Marks</th>
								<th scope="col">Year</th>
								<th scope="col">Unit</th>

							</tr>
</thead>
							<%
								int i = 0;
								while (rs1.next()) {
									i++;
									String subject1 = rs1.getString("subject");
									String question = rs1.getString("question");
									String marks1 = rs1.getString("marks");
									String date = rs1.getString("rdate");
									String unit1 = rs1.getString("Unit");
							%>

<thead class="thead-light">
							<td><%=i%></td>
							<td><%=rs1.getString("subject")%></td>
							<td><%=rs1.getString("question")%></td>

							<td><%=rs1.getString("marks")%></td>
							<td><%=rs1.getString("rdate")%></td>
							<td><%=rs1.getString("unit")%></td>
</thead>


							<tr>



							</tr>







							<%
								}
							%>

						</table>
					
		</div>
	</div>
	
</body>
</html>