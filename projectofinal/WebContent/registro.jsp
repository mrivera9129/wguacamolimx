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

<title>Guacamoli.mx - Registro</title>
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
body {
	background: url('img/fondo-login.jpg');
    background-size: auto;
background-size: cover;
}
</style>
<link href="css/style.css" rel="stylesheet">
</head>

<body id="page-top">

	<!-- Navigation -->
	<%@ include file="bienvenido.jsp" %>

	<!-- About Section -->
	<section class="page-section" id="about"
		style="background: url('https://cdn.pixabay.com/photo/2017/02/15/10/39/food-2068217_960_720.jpg'); background-size: cover;">

		<div class="container" style="padding-top: 40px;">

			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8" style="padding: 20px;">
					<h2 class="" style="color: white; text-align:center;">Crear una cuenta</h2>
					<form method="post" action="registro">
						<p></p>
						<p>
							<input type="text" name="nombre" autofocus required
								placeholder="Nombre" /> <input type="text" name="apellidos" required
								placeholder="Apellidos" />
						</p>
						<p>
							<input type="number" name="edad" required placeholder="Edad" /> 
							<select  title="Género" name="sexo">
							<option value="M">Masculino</option>
							<option value="F">Femenino</option>
							</select>

						</p>
						<p>
							<input type="text" name="ocupacion" required placeholder="Ocupación" />
							<input type="text" name="email" required placeholder="Email" />
						</p>
						<p>
							<input type="text" name="usuario" autofocus required
								placeholder="Usuario" /> <input type="password" name="password" required
								placeholder="Contraseña" />
						</p>
						<h5 style="color: white;">Cuéntanos sobre ti:</h5>
						<textarea style="" rows="4" name="sobre" required></textarea>
						<p><p>
						<p class="text-center">
							<button class="btn btn-primary" type="submit">Registrarse</button>
						</p>
					</form>
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