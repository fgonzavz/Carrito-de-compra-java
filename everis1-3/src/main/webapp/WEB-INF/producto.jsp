<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crear Producto</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>


	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">EVERIS</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav center">
					<li class="nav-item"><a class="nav-link" href="/home/">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link active" href="#">Agregar
							Productos</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/producto/lista_productos/"> Lista de Productos</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<br>

	<h1 style="text-align:center">Ingrese sus Productos</h1>
	<br>
	<br>
	<br>
	<form:form class="w-50 " style="margin:0 auto" action="/producto/crear" method="post"
		modelAttribute="producto">
	
		<div class="mb-2">

			<form:label class="form-label" path="codigo">codigo:</form:label>
			<form:input class="form-control w-8" type="text" path="codigo" />

		</div>
		<div class="mb-2">

			<form:label class="form-label" path="nombre">nombre:</form:label>
			<form:input class="form-control" type="text" path="nombre" />
			

		</div>

		<div class="mb-2">
			<form:label class="form-label" path="precio">precio:</form:label>
			<form:input class="form-control" type="text" path="precio" />
		</div>
		<div class="mb-2">

			<form:label class="form-label" path="Stock">Stock:</form:label>
			<form:input class="form-control" type="text" path="Stock" />


		</div>
		<input class="btn btn-primary" type="submit" value="Crear Producto">
		<br>
		<!--  <a href="/producto/lista_productos/">Ver Lista de Producto</a>-->

	</form:form>
	


</body>
</html>