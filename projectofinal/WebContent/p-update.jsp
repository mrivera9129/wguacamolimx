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
<%@page import="modelos.Usuarios"%>
<% 
HttpSession hss = request.getSession(); 
Usuarios us = (Usuarios) hss.getAttribute("usuario");
%>
	<!-- Navigation -->
	<%@ include file="header.jsp" %>

	<!-- About Section -->
	<section class="page-section" id="about">
	
		<div class="container" style="padding-top: 60px;">
			<% if(hs.getAttribute("session") != null){ %>
			<div class="row">
			<div class="col-lg-12">
			</div>
			<form method="post" action="UpdateUser">
  <div class="row">
    <div class="col">
      <p>
							<input type="hidden" value="${usuario.id}" name="id"> 
							Nombre:&nbsp;&nbsp; <br> <input  class="form-control"  type="text" name="nombre" autofocus required
								placeholder="Nombre" value="${usuario.nombre}" /> <br> Apellidos:&nbsp;&nbsp; <br><input  class="form-control"  type="text" name="apellidos" required
								placeholder="Apellidos" value="${usuario.apellidos}" />
						</p>
						<p>
							Ocupación:&nbsp;&nbsp;<br><input class="form-control" type="text" name="ocupacion" required placeholder="Ocupación" value="${usuario.ocupacion}" />
							<br>Email:&nbsp;&nbsp;<br><input class="form-control" type="text" name="email" required placeholder="Email" value="${usuario.email}" />
						</p>
    </div>
    <div class="col">
      <p>
							Edad:&nbsp;&nbsp;<br><input  class="form-control"  type="number" name="edad" required placeholder="Edad" value="${usuario.edad}" /> 
							<br>Género:&nbsp;&nbsp;<select  class="form-control"  name="sexo" required>
							<option value="M">Masculino</option>
							<option value="F">Femenino</option>
							</select>

						</p>
						<p>
							Usuario:&nbsp;&nbsp;<br><input class="form-control" type="text" name="usuario" autofocus required
								placeholder="Usuario" value="${usuario.usuario}" /><br>Contraseña:&nbsp;&nbsp;<br><input class="form-control" type="password" name="password"
								placeholder="" value="${usuario.password}" required />
						</p>
    </div>
    </div>
     <div class="row">
    <div class="col">
    <h5>Cuéntanos sobre ti:</h5>
						<textarea class="form-control" style="" rows="4" name="sobre">${usuario.sobre}</textarea>
						<p></p>
						<p>
							<button class="btn btn-primary" type="submit">Actualizar</button>
						</p>
  </div>
  </div>
</form>
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