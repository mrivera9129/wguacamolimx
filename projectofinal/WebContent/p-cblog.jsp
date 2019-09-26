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

#mainNav .navbar-nav .nav-item .nav-link {
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
	<%@ include file="header.jsp"%>

	<!-- About Section -->
	<section class="page-section" id="about">

		<div class="container" style="padding-top: 60px;">
			<%
				if (hs.getAttribute("session") != null) {
			%>
			<div class="row">
				<form method="post" action="saveReceta"
					enctype="multipart/form-data">
					<div class="row">
						<div class="col">
							<h3>Crear Blog</h3>
						</div>
					</div>
					<div class="row">

						<div class="col">
							<p>
								Título:&nbsp;&nbsp; <br> <input class="form-control"
									type="text" name="nombre" autofocus required placeholder=""
									value="" /> <input type="hidden" name="tipo" value="B">
								<input type="hidden" name="id_usuario" value="<%=us.getId()%>">
							</p>

						</div>
						<div class="col">
							Autor:&nbsp;&nbsp; <br> <input class="form-control"
								type="text" name="autor" autofocus required placeholder=""
								value="" />
						</div>

						<div class="col">
							Tipo:&nbsp;&nbsp; <br> <select class="form-control"
								name="comida" required>
								<option value="Platillo">Platillo</option>
								<option value="Postre">Postre</option>
							</select>
						</div>
						<div class="col">
							<p>
								Estado:&nbsp;&nbsp; <br> <select class="form-control"
									name="estado" required>
									<option>Aguascalientes</option>
									<option>Baja California</option>
									<option>Baja California Sur</option>
									<option>Campeche</option>
									<option>Chihuahua</option>
									<option>Chiapas</option>
									<option>Coahuila</option>
									<option>Colima</option>
									<option>Durango</option>
									<option>Guanajuato</option>
									<option>Guerrero</option>
									<option>Hidalgo</option>
									<option>Jalisco</option>
									<option>México</option>
									<option>Michoacán</option>
									<option>Morelos</option>
									<option>Nayarit</option>
									<option>Nuevo León</option>
									<option>Oaxaca</option>
									<option>Puebla</option>
									<option>Querétaro</option>
									<option>Quintana Roo</option>
									<option>San Luis Potosí</option>
									<option>Sinaloa</option>
									<option>Sonora</option>
									<option>Tabasco</option>
									<option>Tamaulipas</option>
									<option>Tlaxcala</option>
									<option>Veracruz</option>
									<option>Yucatán</option>
									<option>Zacatecas</option>
								</select>
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<p>
								Contenido:&nbsp;&nbsp; <br>
								<textarea class="form-control" style="" rows="4"
									name="contenido"></textarea>
							</p>
							<p>
								Imagen:&nbsp;&nbsp; <br> <input type="file" class=""
									style="" name="imagen">
							</p>
							<p>
								Video:&nbsp;&nbsp; <br> <input type="text" class=""
									style="" name="video">
							</p>
							<p>
								<button class="btn btn-primary" type="submit">Guardar</button>
							</p>
						</div>
					</div>
				</form>
			</div>

			<%
				} else {
			%>
			<div class="row">
				<div class="col-lg-12 col-sm-6" style="text-align: center;">
					<h4>¡Necesitas registrarte para entrar aquí!</h4>
					<br> <a href="login.jsp">Login/Registrarse </a>
				</div>
			</div>
			<%
				}
			%>

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