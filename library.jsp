<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="lib.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="row pt-1 pb-1">
			<div class="col-lg-12">
				<h1 class="text-center h1" style="color: white" >Welcome to Library</h1>
			</div>
		</div>
	</div>
	<section style="margin-top: 40px">
	
		<div id="carouselExampleFade" class="carousel slide carousel-fade"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="text-center">
						<img
							src="https://storage.googleapis.com/support-forums-api/attachment/thread-2456609-676079104261257749.JPG"
							class="rounded" width="60%" alt="...">
					</div>
				</div>


				<!--https://upload.wikimedia.org/wikipedia/commons/8/8d/Yarra_Night_Panorama%2C_Melbourne_-_Feb_2005.jpg-->
			</div>
			<a class="carousel-control-prev" href="#carouselExampleFade"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleFade"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</section>
	<section class="search-sec" style="margin-top: -20px">
		<div class="container-fluid">
			<form action="#" method="post" novalidate="novalidate">
				<div class="row">
					<div class="col-lg-12">
						<div class="row justify-content-center">

							<div class="col-lg-3 col-md-3 col-sm-12 p-1">
							<a href="add_feedback.jsp"><button type="button" class="btn btn-success wrn-btn">Feedback</button></a>
								
							</div>

							<div class="col-lg-3 col-md-3 col-sm-12 p-1">
								<button type="button" class="btn btn-danger wrn-btn">Issue</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>

	<script type="text/javascript" src="jquey-3.6.0.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</body>
</html>

