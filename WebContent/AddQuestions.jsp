<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questions</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script><script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</head>
<body style="background-image: url('./img/sleepingzoozoo.jpg');">

<jsp:include page="/adminheader.jsp" />

	<%
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Calendar cal = Calendar.getInstance();
	%>

	<div class="container" style="margin-top: 70px; margin-left: 700px">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-offset-3 col-md-8">
					<div class="form" style="width: 100%">
						<h2>Add New Questions</h2>
						<form action="./AddQuestion" method="post" name="ureg">
							<table class="table">
						<tr>
									<th>Subject</th>
									<td><select name="subject" style="width: 200px; height: 40px"
									class="form-control" required>
										<option>Select</option>
										<option value="Physics">Physics</option>
										<option value="Chemistry">Chemistry</option>
										<option value="Mathematics">Mathematics</option>
										<option value="Biology">Biology</option>
										<option value="English">English</option>
								</select></td>
									<th>Question</th>
									<td><input type="text" name="question"
										placeholder="Enter Question" class="form-control" required /></td>
										<tr><th>Answer</th>
									<td><input type="text" name="answer"
										placeholder="Enter Answer" class="form-control" required /></td></tr>

								</tr>
								<th>Marks</th>
								<td><select name="marks" style="width: 200px; height: 40px"
									class="form-control" required>
										<option>Select</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
								</select></td>

								<th>Year</th>

								<td style="color: black"><input type="text" name="rdate" class="form-control" placholder="Enter Year"></td>
								</tr>
								<th>Unit</th>
								<td><select name="unit" style="width: 200px; height: 40px" class="form-control">
										<option>Select</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
								</select></td>
								</tr>
								<tr />
								<tr />
								<tr />
								<tr>
								<td></td>
									<td></td>
									<td></td>
									<td><button type="submit" class="btn btn-info">SUBMIT</button></td>
									<td></td>
<td></td>
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


