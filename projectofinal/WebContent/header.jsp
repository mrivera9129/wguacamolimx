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
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="p-micuenta.jsp"> ${usuario.nombre} </a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">Recetas</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="./recetas">Mis recetas</a> <a
							class="dropdown-item" href="p-creceta.jsp">Crear receta</a>
					</div>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">Blogs</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="./blogs">Mis blogs</a> <a
							class="dropdown-item" href="p-cblog.jsp">Crear blogs</a>
					</div></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="./salir">Cerrar Sesión</a></li>
			</ul>
			<% } %>
		</div>
	</div>
</nav>