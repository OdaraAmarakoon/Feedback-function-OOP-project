<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link href="IT20600198.css" rel="Stylesheet">
<link rel="stylesheet" href="custom_2.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body class="overflow-hidden justify-content-center" >
	<header>
		<div id="topbar">
			<img style="margin-bottom: 70px" id="image" src="logo.png">
			<button style="margin-top: 35px" id="name" type="button">PlayVid</button>


		</div>
	</header>


	<div class="container contact-form" style=" margin-top:120px">
		<div class="contact-image">
			<img src="https://cdn-icons-png.flaticon.com/512/3616/3616612.png"
				alt="rocket_contact" />
		</div>
		<form action="add_feedback" method="get">
			<h3>Drop Us a Feedback</h3>
			<div class="row">
				<div class="col-md-12">


					<div class="form-group">
						<textarea name="feedback" class="form-control"
							placeholder="Type your feedback ..."
							style="width: 100%; height: 150px;"></textarea>
					</div>

					<button style="width: 200px;" type="submit" name="btnSubmit"
						class="btnContact">Send Feedback</button>

				</div>

			</div>
		</form>
	</div>

	<footer>

		<div id="bottombar">
			<button id="home">Home</button>
			<button id="upload">Upload</button>
			<a href="library.jsp"><button id="library">Library</button></a>

			<button id="account">Account</button>
		</div>
	</footer>
</body>
</html>