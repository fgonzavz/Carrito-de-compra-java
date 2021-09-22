<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>producto editar</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>

	<br>

	<h1 style="text-align: center">Editar Producto</h1>
	<br>
	<br>
	<div>
		<form:form class="w-50 " style="margin:0 auto"
			action="/producto/modificar" method="post" modelAttribute="producto">
			<input type="hidden" name="_method" value="put">
			<form:hidden path="id" />
			<div class="mb-2">
				<form:label class="form-label" path="codigo">codigo:</form:label>
				<form:input class="form-control" type="text" path="codigo" />
				<br>
			</div>
			<div class="mb-2">
				<form:label class="form-label" path="nombre">nombre:</form:label>
				<form:input class="form-control" type="text" path="nombre" />
				<br>
			</div>
			<div class="mb-2">
				<form:label class="form-label" path="precio">precio:</form:label>
				<form:input class="form-control" type="text" path="precio" />
				<br>
			</div>

			<div class="mb-2">
				<form:label class="form-label" path="Stock">Stock:</form:label>
				<form:input class="form-control" type="text" path="Stock" />
				<br>
			</div>


			<input class="btn btn-primary" type="submit"
				value="Modificar Producto">
		</form:form>

	</div>
</body>
</html>