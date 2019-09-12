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
</style>
<link href="css/style.css" rel="stylesheet">
</head>

<body id="page-top">

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
		</div>
	</nav>

	<!-- About Section -->
	<section class="page-section" id="about"
		style="background: url('https://cdn.pixabay.com/photo/2017/02/15/10/39/food-2068217_960_720.jpg'); background-size: cover;">

		<div class="container" style="padding-top: 40px;">

			<div class="row">

				<div class="col-lg-8" style="padding: 20px;">
					<form method="post" action="">
						<h2 class="" style="color: white;">Crear cuenta</h2>
						<p></p>
						<p>
							<input type="text" name="us" autofocus required
								placeholder="Nombre" /> <input type="text" name="ps" required
								placeholder="Apellidos" />
						</p>
						<p>
							<input type="text" name="ps" required placeholder="Edad" /> 
							<select>
							<option disabled selected>Género</option>
							<option value="M">Masculino</option>
							<option value="F">Femenino</option>
							</select>

						</p>
						<p>
							<input type="text" name="ps" required placeholder="Ocupación" />
							<input type="text" name="ps" required placeholder="Email" />
						</p>
						<p>
							<input type="text" name="us" autofocus required
								placeholder="Usuario" /> <input type="text" name="ps" required
								placeholder="Contraseña" />
						</p>
						<h5 style="color: white;">Cuéntanos sobre ti:</h5>
						<textarea style="" rows="4"></textarea>
						<p>
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