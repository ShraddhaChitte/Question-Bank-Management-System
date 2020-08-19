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


	<div style="margin-top: 70px; margin-left: 250px; background-color:lightgrey;width:60%; overflow-x:auto;">
		


					
						<h2 style="text-align:center;">Student Details</h2>
						<%
					Connection con=ConnectionProvider.getConnection();
						String qur1="select *from user"; 
						PreparedStatement ps1=con.prepareStatement(qur1);
						ResultSet rs1=ps1.executeQuery();
						
					%>
					<table border="1px solid black" style="text-align: center" class="table">
					<thead class="thead-dark">
					<tr>
					<th>ID</th>
					<th>Name</th>
						
					<th>Mobile</th>
					<th>Email</th>
					<th>Delete</th>
			
					
					
					</tr>
					</thead>
					
												<%
									int i = 0;
									while (rs1.next()) {
										i++;
										String fname=rs1.getString("name");
										
										String mobile=rs1.getString("mobile");
										String email=rs1.getString("email");
										
										
								%>
						
					
<thead class="thead-light">
							<td><%=i%></td>
							<td><%=fname%></td>
							
							<td><%=mobile%></td>
							<td><%=email%></td>
						
												
						
						
						
						
					
		 				<td><button type="submit" class="btn btn-warning" onclick="location.href='DeleteStudent?email=<%=email%>'">Delete</button> </td> 
						</thead>	</form>
						</tr>
					
						
						
						
						
						

	<%					
	}
	%>	
	
	</table>				
					</div>
					<%
					String email=request.getParameter("email");
					String query="delete from user where email="+email+"";
					Connection connection=ConnectionProvider.getConnection();
					PreparedStatement prepareStatement=con.prepareStatement(query);
					System.out.println("Delete successfully");					
					
					
					
					%>
				
</body>
</html>