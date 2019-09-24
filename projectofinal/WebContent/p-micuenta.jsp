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
	<%@ include file="header.jsp" %>
	<!-- About Section -->
	<section class="page-section" id="about">
	
		<div class="container" style="padding-top: 100px;">
			<% if(hs.getAttribute("session") != null){ %>
			<div class="row">
			<div class="col-lg-12">
			<h4 style="color:#f4623a">Mi cuenta </h4>
			</div>
				<div class="col-lg-2 col-sm-4" style="padding-top: 20px;">
				<% if(s.equals("F") ){%>
				<img src="http://icons.iconarchive.com/icons/hopstarter/sleek-xp-basic/128/Office-Girl-icon.png">
				<% } else { %>
				<img src="http://icons.iconarchive.com/icons/icons-land/vista-people/128/Person-Male-Light-icon.png">
				<% } %>
				</div>
				<div class="col-lg-4 col-sm-6">
				<p>Nombre: ${usuario.nombre} ${usuario.apellidos}<p>
				<p>Edad: ${usuario.edad}<p>
				<p>Sexo: ${usuario.sexo}<p>
				<p>Ocupación: ${usuario.ocupacion}<p>
				<p>Email: ${usuario.email}<p>
				<p>Sobre ti: ${usuario.sobre}<p>
				<p><a href="p-update.jsp">Actualizar mis datos</a></p>
				
				
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