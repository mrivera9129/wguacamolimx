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

<title>Guacamoli.mx - Login</title>
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

a {
	text-decoration: none !important;
}

body {
	background: url('img/fondo-login.jpg');
    background-size: auto;
background-size: cover;
}
</style>

</head>

<body id="page-top">

	<!-- Navigation -->
	<%@ include file="bienvenido.jsp" %>

	<!-- About Section -->
	<section class="page-section" id="about">

		<div class="container" style="padding-top: 100px;">

			<div class="row">
				<div class="col-lg-4 col-sm-6"></div>
				<div class="col-lg-4 col-sm-6"
					style="padding: 20px;">
					<form method="post" action="login">
						<h2 class="text-center mt-0" style="color: #fff;">Iniciar sesión</h2>
						<hr class="divider my-4" style="">
						<div class="text-center">
							<p>
								<input type="text" name="us" autofocus required
									placeholder="Usuario">
							</p>
							<p>
								<input type="password" name="ps" required
									placeholder="Contraseña">
							</p>
							<p>
								<button class="btn btn-secondary" type="submit">Entrar</button>
							</p>
						</div>
					</form>
					<div class="text-center">
					<h5 style="color: #fff;">¿No tienes cuenta?</h5>
					<p style="color: #fff;">
						<!--  
					<a href="#" >¿Olvido su password? </a> <br> 
					-->

						Regístrate <a href="registro"> AQUÍ</a>
					</p>
					</div>
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