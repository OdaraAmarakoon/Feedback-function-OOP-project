<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Feedback</title>
<!-- Add Boostrap files -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">

<link rel="stylesheet" href="custom_2.css">
</head>
<body>

	<%
	String comment = request.getParameter("comment");
	String f_id = request.getParameter("f_id");
	%>

	<div class="container contact-form">
		<div class="contact-image">
			<img src="https://image.ibb.co/kUagtU/rocket_contact.png"
				alt="rocket_contact" />
		</div>
		<form action="update_feedback" method="get">
			<h3>Update Feedback</h3>
			<div class="row">

				
				<div class="col-md-12">
					<div class="form-group">
						<textarea class="form-control" name="comment"
							style="width: 100%; height: 100px; text-align: justify;"><%=comment%></textarea>
						
					</div>
					<input name="feedback_id" value="<%=f_id%>" hidden="true">
				</div>


				<div class="form-group">
					<button type="submit" name="btnSubmit" class="btnContact">Update
						Feedback</button>
				</div>


			</div>
		</form>
	</div>


	<!-- Add JS -->
	<script type="text/javascript" src="jquey-3.6.0.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</body>
</html>
