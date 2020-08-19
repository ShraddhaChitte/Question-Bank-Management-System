<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
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




						<h2>My Profile</h2>
						<%
							String pass = request.getParameter("password");
							Connection con = ConnectionProvider.getConnection();
							String qur1 = "select *from user where password='" + pass + "'";
							PreparedStatement ps1 = con.prepareStatement(qur1);
							ResultSet rs1 = ps1.executeQuery();
						%>
						<table border="1px solid black"
							style="text-align: center; fill: auto">
				

							<%
								int i = 0;
								while (rs1.next()) {
									i++;
									String name = rs1.getString("name");
									String email = rs1.getString("email");
									String mobile = rs1.getString("mobile");
									String password = rs1.getString("password");
									
							%>

							<form action="EditProfile" method="post">
								

									<th>NAME : </th><td><input type="text" name="name" value=<%=name%>
										readonly></td></tr><tr>
									<th>EMAIL : </th><td><input type="text" name="email" value=<%=email%>></td>
									</tr><tr>
									<th>MOBILE : </th><td><input type="text" name="mobile" value="<%=mobile%>"></td>
									</tr><tr>
									<th>PASSWORD : </th><td><input type="text" name="password" value="<%=password%>"></td>
									</tr><tr>
									<input type="hidden" name="password" value="<%=pass%>">
									</tr>
									<tr>
									<th>UPDATE : </th><td><button type="submit" class="btn btn-info">Update</button></td>
								</tr>
							</form>






							<%
								}
							%>

						</table>
					
		</div>
	</div>
</body>
</html>