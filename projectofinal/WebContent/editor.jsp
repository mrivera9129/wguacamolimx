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

<title>Guacamoli.mx - Editor</title>
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

<link rel="stylesheet" href="js/tiny/style.css" />
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
</style>

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
	<section class="page-section" id="about">

		<div class="container" style="padding-top: 100px;">

			<div class="row">
				<div class="col-lg-8 col-sm-6">
					<h1>Receta</h1>
					<form method="post" action="saveReceta">
						<textarea id="texto" name="texto" style="width: 400px; height: 200px"></textarea>
						<p>
							<input type='submit' style='text-align: right' name='enviar' id='enviar' value='Enviar'>
						</p>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 col-sm-6">
					<h1>Archivo</h1>
					<form action="upload" method="post" enctype="multipart/form-data">
						<input type="text" name="description" /> <input type="file"
							name="file" /> <input type="submit" />
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

	<!-- HTML Editor  -->

	<script type="text/javascript" src="js/tiny/tinyeditor.js"></script>
	<script type="text/javascript">
	var texto = new TINY.editor.edit('texto', {
		    id: 'texto',
			width : 584,
			height : 175,
			cssclass : 'te',
			controlclass : 'tecontrol',
			rowclass : 'teheader',
			dividerclass : 'tedivider',
			controls : [ 'bold', 'italic', 'underline', 'strikethrough', '|',
					'subscript', 'superscript', '|', 'orderedlist',
					'unorderedlist', '|', 'outdent', 'indent', '|',
					'leftalign', 'centeralign', 'rightalign', 'blockjustify',
					'|', 'unformat', '|', 'undo', 'redo', 'n', 'font', 'size',
					'style', '|', 'image', 'hr', 'link', 'unlink', '|', 'cut',
					'copy', 'paste', 'print' ],
			footer : true,
			fonts : [ 'Verdana', 'Arial', 'Georgia', 'Trebuchet MS' ],
			xhtml : true,
			cssfile : 'js/tiny/style.css',
			bodyid : 'editor',
			footerclass : 'tefooter',
			toggle : {
				text : 'show source',
				activetext : 'show wysiwyg',
				cssclass : 'toggle'
			},
			resize : {
				cssclass : 'resize'
			}
		});
	$('#enviar').click(function() {
		   texto.post();
		 });
	</script>

</body>

</html>