<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de los Productos</title>
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
					<li class="nav-item"><a class="nav-link" href="/producto/">Agregar
							Productos</a></li>
					<li class="nav-item"><a class="nav-link active" href="#">
							Lista de Productos</a></li>

				</ul>
			</div>
		</div>
	</nav>


	<h1 style="text-align: center">Productos agregados</h1>
	<br>
	<table class="table table-striped w-70">
		<thead>
			<tr>
				<th>#</th>
				<th>codigo</th>
				<th>nombre</th>
				<th>precio</th>
				<th>Stock</th>
				<th>Total</th>

				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="producto" items="${lista_productos}">
				<tr>
					<td><c:out value="${producto.id}" /></td>
					<td><c:out value="${producto.codigo}" /></td>
					<td><c:out value="${producto.nombre}" /></td>
					<td><c:out value="${producto.precio}" /></td>
					<td><c:out value="${producto.stock}" /></td>
					<td><c:out
							value="${ suma = (producto.precio * producto.stock)}" /></td>
					<td style="display: none"><c:out
							value="${ suma2 = suma2 +suma}" /></td>
					<td><a class="btn btn-warning "
						href="/producto/actualizar/${producto.id}">Editar</a> <br> <!-- ELIMINAR UN REGISTRO POR EL ID -->


						<form action="/producto/eliminar2/${producto.id}" method="POST">
							<input type="hidden" name="_method" value="delete"> <input
								type="submit" class="btn btn-danger " value="Eliminar">
						</form></td>
				</tr>
			</c:forEach>




		</tbody>
	</table>
	<br>


	<h2>
		TOTAL COMPRA:
		<c:out value="${suma2}" />
	</h2>


</body>
</html>