<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
    <br>

	<h1 style="text-align: center">Login</h1>
	<br>
	<br>
    <p><c:out value="${error}" /></p>
    <form class="w-50 " style="margin:0 auto" method="post" action="/ingresar">
        <p>
        <div class="mb-2">
            <label class="form-label" for="email">Email</label>
            <input class="form-control" type="text" id="email" name="email"/>
        </div>
        </p>
        <p>
        <div class="mb-2">
            <label class="form-label" for="password">Password</label>
            <input class="form-control" type="password" id="password" name="password"/>
        </div>
        </p>
        <input class="btn btn-primary w-100" type="submit" value="inicio sesion"/>
        <br>
          <br>
          <a  class="btn btn-success d-block"href="/registro"> Registrarse</a>  
    </form>  
  
</body>
</html>