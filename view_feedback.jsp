<%@page import="java.util.Collections"%>
<%@page import="Model.Feedback"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Model.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Feedback</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body style="background: -webkit-linear-gradient(left, #0072ff, #00c6ff);">
	
	<jsp:include page="nav.jsp"></jsp:include>
	
	<%
	DB database = new DB();
	ResultSet rs = database.getData(
			"SELECT feedback.id, user.uid, user.fname, user.lname, user_login.email, feedback.comment FROM feedback INNER JOIN user ON feedback.user_uid = user.uid INNER JOIN user_login ON user.uid = user_login.id");
	List<Feedback> ls = new ArrayList<Feedback>();
	Feedback f = null;
	int uid = 0;
	int f_id = 0;
	String fname = "";
	String lname = "";
	String email = "";
	String comment = "";

	if (rs != null) {
		while (rs.next()) {
			uid = Integer.parseInt(rs.getString("user.uid"));
			fname = rs.getString("user.fname");
			lname = rs.getString("user.lname");
			email = rs.getString("user_login.email");
			comment = rs.getString("feedback.comment");
			f_id = Integer.parseInt(rs.getString("feedback.id"));
			f = new Feedback(uid, f_id, fname, lname, email, comment);
			ls.add(f);
		}

	}
	%>



	<%
	//Collections.sort(ls,Collections.reverseOrder());

	for (Feedback s : ls) {
	%>


	<section>
		<div class="container my-2 py-2">
			<div class="row d-flex justify-content-center">
				<div class="col-md-12 col-lg-10 col-xl-8">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-start align-items-center">
								<img class="rounded-circle shadow-1-strong me-3"
									src="https://cdn-icons-png.flaticon.com/512/2922/2922688.png"
									alt="avatar" width="60" height="60" />


								<div>
									<h6 class="fw-bold text-primary mb-1"><%=s.getFname()%>
										<%=s.getLname()%></h6>
									<p class="text-muted small mb-0">
										<%=s.getEmail()%>
									</p>
								</div>
							</div>

							<p class="mt-3 mb-4 pb-2" id="comment">
								<%=s.getComment()%>

							</p>

							<input id="feedback_id" value="<%=s.getFeedback_id()%>"
								hidden="true">

							<!--<div class="small d-flex justify-content-start">
								<a href="#!" class="d-flex align-items-center me-3"> <i
									class="far fa-thumbs-up me-2"></i>
									<p class="mb-0">Like</p>
								</a> <a href="#!" class="d-flex align-items-center me-3"> <i
									class="far fa-comment-dots me-2"></i>
									<p class="mb-0">Comment</p>
								</a> <a href="#!" class="d-flex align-items-center me-3"> <i
									class="fas fa-share me-2"></i>
									<p class="mb-0">Share</p>
								</a>
							</div>  -->
						</div>
						<div class="card-footer py-3 border-0"
							style="background-color: #f8f9fa;">

							<%
							boolean found = false;
							HttpSession ses = request.getSession();
							String userId = ses.getAttribute("user").toString();
							int c_uid = Integer.parseInt(userId);

							if (c_uid == s.getUid()) {
								found = true;
							}
							%>

							<%
							if (found) {
							%>
							<input hidden="true" data-target="#exampleModal"
								data-toggle="modal" data-fid="<%=s.getFeedback_id()%>">

							<!-- 
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#exampleModal" id="btn_update">Update</button>
							 -->
							<a
								href="update_feedback.jsp?comment=<%=s.getComment()%>&f_id=<%=s.getFeedback_id()%>"><button
									type="button" class="btn btn-success">Update</button></a>

							<button type="button" class="btn btn-outline-danger"
								data-toggle="modal" data-target="#deleteModal"
								data-whatever="<%=s.getFeedback_id()%>">Delete</button>
						</div>

						<%
						}
						%>

					</div>
				</div>
			</div>
		</div>

		<%
		}
		%>

	</section>

	<!-- Update Modal Start -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Update Feedback</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>



				<div class="modal-body">
					<form>

						<div class="form-group">
							<label for="message-text" class="col-form-label">Comment</label>
							<textarea class="form-control" id="message-text"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Update
						Feedback</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Update Modal nd -->

	<!-- Delete Modal Start -->
	<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Do You Want
						Delete This Feedback ?</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>


				<form action="delete_feedback" method="get">
					<div class="modal-body">
						<input hidden="true" name="fid">
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Yes</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">No</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Delete Modal nd -->




	<script type="text/javascript" src="jquey-3.6.0.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script>
		//$('#exampleModal').on('show.bs.modal', function(event) {
		//var button = $(event.relatedTarget) // Button that triggered the modal
		//var recipient = button.data('whatever') // Extract info from data-* attributes

		// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		//var modal = $(this)
		//modal.find('.modal-title').text('New message to ' + recipient)
		//modal.find('.modal-body textarea').val(recipient)
		//});
	</script>

	<script type="text/javascript">
		$("#btn_update").click(function() {
			var comment = $("#comment").val();
			var f_id = $("#feedback_id").val();
			$("#message-text").html(comment);

		});
	</script>

	<script>
		$('#deleteModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget) // Button that triggered the modal
			var recipient = button.data('whatever') // Extract info from data-* attributes

			// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
			var modal = $(this)
			//modal.find('.modal-title').text('New message to ' + recipient)
			modal.find('.modal-body input').val(recipient)
		});
	</script>
</body>
</html>