<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="login.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body class="overflow-hidden">

	<div class="container">
		<div class="row content">
			<div class="col-md-6 mb-3">
				<img src="login.png" class="img-fluid" alt="image">
			</div>
			<div class="col-md-6">
				<h3 class="signin-text mb-3">Sign In</h3>

				<form action="user_login" method="post">
					<div class="form-group">
						<label for="username">User name</label> <input type="text"
							placeholder="Enter Username" name="email" required
							class="form-control">
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							placeholder="Enter Password" name="password" required
							class="form-control">
					</div>
					<div>
						
						<button class="btn btn-class">Login</button>
						 <br>
						<br>
						<p>
							Don't Have an Account ? <a href="user_profile.jsp">Sign up</a>
						</p>
						<a href="userinsert.jsp">Back to Home</a>
					</div>
				</form>

			</div>

		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>


</body>
</html>