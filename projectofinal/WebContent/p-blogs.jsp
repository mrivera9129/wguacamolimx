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
input{
	height: 40px;
}
#mainNav .navbar-nav .nav-item .nav-link{
	color: #6c757d !important;
}
</style>

</head>

<body id="page-top">
<%@page import="modelos.Usuarios"%>
<% 
HttpSession hs = request.getSession(); 
Usuarios us = (Usuarios) hs.getAttribute("usuario");
String s = (String) us.getSexo();
%>
	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg navbar-light fixed-top py-3 navbar-scrolled"
		id="mainNav"
		style="webkit-box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, .15); box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, .15); background-color: #fff;">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="./"
				style="color: #f4623a;">Gucamoli.mx</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
			<% if(hs.getAttribute("session") != null){ %>
				<ul class="navbar-nav ml-auto my-2 my-lg-0">
				<li class="nav-item"><a  class="nav-link js-scroll-trigger"
						href="p-micuenta.jsp">Bienvenid@ ${usuario.nombre} </a> </li>
					<li class="nav-item"><a  class="nav-link js-scroll-trigger"
						href="./recetas">Mis recetas</a> </li>
					<li class="nav-item"><a  class="nav-link js-scroll-trigger"
						href="./blogs">Mis blogs</a> </li>	
					<li class="nav-item"><a  class="nav-link js-scroll-trigger"
						href="./salir">Cerrar Sesión</a> </li>
				</ul>
				<% } %>
			</div>
		</div>
	</nav>

	<!-- About Section -->
	<section class="page-section" id="about">
	
		<div class="container" style="padding-top: 100px;">
			<% if(hs.getAttribute("session") != null){ %>
			<div class="row">
			<div class="col-lg-12">
			<h4 style="color:#f4623a">Mis Blogs </h4>
			</div>
			</div>
			<% } else { %>
			<div class="row">
				<div class="col-lg-12 col-sm-6" style="text-align:center;">
				<h4>¡Necesitas registrarte para entrar aquí! </h4>	<br>
				<a href="login.jsp" >Login/Registrarse </a>
				</div>
			</div>
			<% } %>
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