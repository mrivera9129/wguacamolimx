<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Guacamoli.mx - Usuarios</title>
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

input {
	height: 40px;
}
</style>

</head>

<body id="page-top">
	<%@page import="java.util.ArrayList"%>
	<%--Importing all the dependent classes--%>
	<%@page import="modelos.Post"%>
	<%@page import="java.util.Iterator"%>
	<%
		ArrayList<Post> listBlogs = (ArrayList) request.getAttribute("blogs");
	%>
	<!-- Navigation -->
	<%@ include file="header.jsp"%>
	<!-- About Section -->
	<section class="page-section" id="about">

		<div class="container" style="padding-top: 100px;">

			<div class="row">
				<div class="col-lg-12 " style="margin-bottom: 10px;">
					<h3>Lista de Blogs</h3>
				</div>
				<!--
				<div class="col-lg-4 col-sm-6"></div>
				 -->
				<div class="col-lg-12 col-sm-12 bd-example">
					<table class="table table-striped">

						<tr>
							<th>Nombre</th>
							<th>Autor</th>
							<th>Estado</th>
							<th>Tipo</th>
							<th></th>
						</tr>
						<%
							// Iterating through subjectList

							if (request.getAttribute("blogs") != null) // Null check for the object
							{
								Iterator<Post> iterator = listBlogs.iterator(); // 

								while (iterator.hasNext()) // 
								{
									Post ps = iterator.next(); //
						%>
						<tr>

							<td><%=ps.getNombre()%></td>
							<td><%=ps.getAutor()%></td>
							<td><%=ps.getEstado()%></td>
							<td><%=ps.getComida()%></td>
							<td><a href="./ver?id=<%=ps.getId()%>">Ver receta</a></td>
						</tr>
						<%
							}
							}
						%>
					</table>
				</div>
				<div class="col-lg-4 col-sm-6"></div>
			</div>
		</div>
	</section>

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