<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<%@page import="java.util.ArrayList"%>
	<%--Importing all the dependent classes--%>
	<%@page import="modelos.Post"%>
	<%@page import="java.util.Iterator"%>
	<%
		ArrayList<Post> listRecetas = (ArrayList) request.getAttribute("trecetas");
	
	%>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Guacamoli.mx - Gastronomía Mexicana</title>
<link rel="icon" type="image/png"
	href="http://icons.iconarchive.com/icons/custom-icon-design/round-world-flags/16/Mexico-icon.png" />
<!-- Font Awesome Icons -->
<link href="css/allmin.css" rel="stylesheet" type="text/css">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link href="css/magnific-popup.css" rel="stylesheet">

<!-- Theme CSS - Includes Bootstrap -->
<link href="css/creativem.css" rel="stylesheet">
<style>
.page-section {
	padding: 3rem 0;
}

.card-body {
	text-align: justify;
}

.text-muted {
	text-align: justify;
}

.img-fluid {
	height: 305px;
}
</style>

</head>

<body id="page-top">


	<!-- Navigation -->
	<%@ include file="header.jsp" %>

	<!-- About Section -->
	<section class="page-section" id="about">

		<div class="container" style="padding-top: 100px;">
			<h1 class="text-center mt-0">Recetas</h1>
			<hr class="divider my-4" style="max-width: 100%;">
			<div class="row">
				<div class="col-lg-12" style="padding: 20px;">
					<div class="row">
<%
							// Iterating through subjectList

							if (request.getAttribute("trecetas") != null) // Null check for the object
							{
								Iterator<Post> iterator = listRecetas.iterator(); // 

								while (iterator.hasNext()) // 
								{
									Post ps = iterator.next(); //
						%>
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img style="height: 200px !important;" class="card-img-top"
								src="data:image/jpeg;base64,<%=ps.getEnc()%>"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a title="ver publicación" href="./ver?id=<%=ps.getId()%>"><%=ps.getNombre()%></a>
								</h4>
								<h5>Origen:<%=ps.getEstado()%></h5>
							</div>
						</div>
					</div>
					
						<%
							}
							}
						%>
					<!-- /.row -->

				</div>
				</div>
			</div>
		</div>
	</section>
	<section style="padding-bottom: 500px;"></section>

	<!-- Footer -->
	<footer class="bg-light py-5">
		<div class="container">
			<div class="small text-center text-muted">Copyright © 2019</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrapb.js"></script>

	<!-- Plugin JavaScript -->
	<script src="js/jquerye.js"></script>
	<script src="js/jquerya.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/creativem.js"></script>

</body>

</html>