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
		ArrayList<Post> listBlogs = (ArrayList) request.getAttribute("tblogs");
	
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
.c{
	color: red;
}
</style>

</head>
<% 
HttpSession hs = request.getSession();
%>
<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Bienvenido</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">Nosotros</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">Recetas</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#portfolio">Blog</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">Contacto</a></li>
					<% if(hs.getAttribute("session") != null){ %>	
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="mi-cuenta">Mi cuenta</a></li>
						<% } else { %>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="login">Entrar/Regístrate</a></li>
						<% } %>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Masthead -->
	<header class="masthead">
		<div class="container h-100">
			<div
				class="row h-100 align-items-center justify-content-center text-center">
				<div class="col-lg-10 align-self-end">
					<h1 class="text-uppercase text-white font-weight-bold"
						style="color: #4CAF50 !important;">Guacamoli.mx</h1>
					<h2 class="text-uppercase text-white font-weight-bold">Las
						mejores recetas del país</h2>
					<hr class="divider my-4">
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75 font-weight-light mb-5">La gastronomía
						de México tiene una gran diversidad de platos típicos, por ello
						fue reconocida, por la UNESCO, como Patrimonio Inmaterial de la
						Humanidad.</p>
					<p>
						<img src="https://www.turitop.com/images/utils/arrow-down.gif"
							style="height: 32px;">
					</p>
					<!--
		  <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
		  -->
				</div>
			</div>
		</div>
	</header>

	<!-- About Section -->
	<section class="page-section" id="about">

		<div class="container">
			<h2 class="text-center mt-0">Guacamoli.mx</h2>
			<hr class="divider my-4">
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<i class="fas fa-4x fa-laptop-code text-primary mb-4"></i>
						<h3 class="h4 mb-2">¿Quiénes Somos?</h3>
						<p class="text-muted mb-0">Somos una comunidad que pretende
							popularizar la cultura gastronómica de México.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<i class="fas fa-4x fa-gem text-primary mb-4"></i>
						<h3 class="h4 mb-2">Misión</h3>
						<p class="text-muted mb-0">Resaltar nuestra gastronomía así
							como los sitios o estados donde proviene.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<i class="fas fa-4x fa-globe text-primary mb-4"></i>
						<h3 class="h4 mb-2">¿Cómo funciona?</h3>
						<p class="text-muted mb-0">Una comunidad de cocineros o chefs
							comparten recetas para la preparación de entradas, platillos y
							postres mexicanos.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<i class="fas fa-4x fa-heart text-primary mb-4"></i>
						<h3 class="h4 mb-2">¡Unete!</h3>
						<p class="text-muted mb-0" style="text-align: center">
							¿Te gustaría formar parte? <br> Déjanos tus datos de
							contacto.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Services Section -->
	<section class="page-section bg-primary" id="services">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<h2 class="text-white mt-0">Cocina Mexicana</h2>
					<hr class="divider light my-4">
				</div>
			</div>

			<div class="col-lg-12">
				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active"
							style="background-image: url('img/concepto-comida-mexicana.jpg'); background-size: cover; width: 100%; height: 300px;">

						</div>
						<div class="carousel-item"
							style="background-image: url('img/comida-m.png'); background-size: cover; width: 100%; height: 300px;">

						</div>
						<div class="carousel-item"
							style="background-image: url('img/restaurantes.jpg'); background-size: cover; width: 100%; height: 300px;">

						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
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
							<a href="#"><img style="heigth: 250px !important;" class="card-img-top"
								src="data:image/jpeg;base64,<%=ps.getEnc()%>"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="receta.jsp"><%=ps.getNombre()%></a>
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
	</section>


	<!-- Portfolio Section -->
	<section id="portfolio">
		<div class="text-center" style="padding-top: 30px;">
			<h1>Blog</h1>
			<hr class="divider my-4">
			<p style="color: #f4623a !important; cursor: pointer;"
				onclick="location.href = 'blogs.jsp';">Todos los blogs</p>
		</div>
		<div class="container-fluid p-0">
			<div class="row no-gutters">
			<%
							// Iterating through subjectList

							if (request.getAttribute("tblogs") != null) // Null check for the object
							{
								Iterator<Post> iterator = listBlogs.iterator(); // 

								while (iterator.hasNext()) // 
								{
									Post ps = iterator.next(); //
						%>
				<div class="col-lg-3 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img style="heigth: 250px !important;" class="card-img-top"
								src="data:image/jpeg;base64,<%=ps.getEnc()%>"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="receta.jsp"><%=ps.getNombre()%></a>
								</h4>
								<h5>Origen:<%=ps.getEstado()%></h5>
							</div>
						</div>
					</div>
				<%
							}
							}
						%>
			</div>


		</div>
	</section>

	<!-- Call to Action Section
  <section class="page-section bg-dark text-white">
    <div class="container text-center">
      <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
      <a class="btn btn-light btn-xl" href="https://startbootstrap.com/themes/creative/">Download Now!</a>
    </div>
  </section>
   -->

	<!-- Contact Section -->
	<section class="page-section" id="contact">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<h2 class="mt-0">Contáctanos</h2>
					<hr class="divider my-4">
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
					<i class="fas fa-phone fa-3x mb-3 text-muted"></i>
					<div>33 - 1296 3254</div>
				</div>
				<div class="col-lg-4 mr-auto text-center">
					<i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
					<!-- Make sure to change the email address in anchor text AND the link below! -->
					<a class="d-block" href="#">contacto@guacamoli.mx</a>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="bg-light py-5">
		<div class="container">
			<div class="small text-center text-muted">Copyright &copy; 2019</div>
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