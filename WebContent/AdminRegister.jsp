<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body style="background-image: url('./img/plane2.jpg');">

<jsp:include page="/Header.jsp"/>

	<div class="container" style="margin-top: 100px; margin-left: 355px">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-offset-3 col-md-8">

					<div class="form" style="width: 100%">
						<h2>New Admin Registration</h2>
						<form action="./AdminRegister" method="post" name="ureg">

							<table>
							
							<tr><td><th>ID</th></td>
							<td><input type="text" name="id"></td>
							</tr>
								<tr>
									<td><th>Email ID</th></td>
									<td><input type="text" name="email"
										placeholder="Enter E-mail ID" onblur="return validEmail()"
										required /></td>

								</tr>
								<tr>
																		<td align="center"><th>Password</th></td>
									<td><input type="password" name="password"
										placeholder="password > 6 " required /></td>
								</tr>
								<tr />

								<tr />

								<tr>
									<td></td>
									<td></td>
									<td><button type="submit" class="btn btn-primary">Register</button></td>
									<td></td>
								</tr>
								<span><%= request.getAttribute("message") %></span>
							</table>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>