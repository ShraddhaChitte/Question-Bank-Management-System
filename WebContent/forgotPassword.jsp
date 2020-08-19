<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('./img/intro-carousel/18.jpg');">

 <jsp:include page="/Header.jsp"/> 
 
 
 
 <%
 String invalid=request.getParameter("invalid");
 if(invalid!=null)
 {
	 out.print("<script>alert('Invalid Username..!!')</script>");
 }
 
 
 
 %>
 
 
 <div class="container" style="margin-top: 120px;margin-left: 110px">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-offset-4 col-md-6" style="margin-left: 120px">
					<div class="form">
						<h2>ENTER USERNAME TO RESET PASSWORD</h2>
						<form action="./ResetPassword" method="post">

							<table>

								
							

								<tr>
									<td>Username</td>
									<td><input type="text" name="username" required /></td>

								</tr>
								
								
								<tr>
									<td></td>
									<td align="center"><button type="submit">Submit</button></td>

								</tr>




							</table>


						</form>
					</div>
				</div>


			</div>

		</div>
	</div>

</body>
</html>