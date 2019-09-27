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

#mainNav .navbar-nav .nav-item .nav-link{
	color: #6c757d !important;
}
textarea {
	border-radius: 3px;
	width: 94%;
}
input, select {
	height: 40px;
}
</style>

</head>

<body id="page-top">
<%@page import="modelos.Post"%>
	<!-- Navigation -->
	<%@ include file="header.jsp" %>

	<!-- About Section -->
	<section class="page-section" id="about">
	
		<div class="container" style="padding-top: 60px;">
			<div class="row">
			<div class="col-lg-12">
			<h2>${post.nombre}</h2>
			<p></p>
			</div>
			<div class="col-lg-6">
			<p>Autor: ${post.autor}</p>
			<p>Estado: ${post.estado}</p>
			<p>Tipo: ${post.comida}</p>
			<p>Ingredientes: <br>${post.ingredientes}</p>
			<p>Preparación: <br> ${post.contenido}</p>
			</div>
			<div class="col-lg-6">
			<% if(hs.getAttribute("vimg") != " "){ %>
			<p>Imagen</p>
			<p>
				<img style="width: auto;height: 300px;"  src="data:image/jpeg;base64,${vimg}" />
			</p>
			<% } %>
			<p>Video</p>
			<iframe width="560" height="315" src="${post.video}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
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