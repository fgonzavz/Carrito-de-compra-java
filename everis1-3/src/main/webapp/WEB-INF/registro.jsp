<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> Registro</title>
       <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
    <br>
    <br>

	<h1 style="text-align: center">Registro</h1>
	<br>
	<br>
    
    <p><form:errors path="user.*"/></p>
    
    <form:form class="w-50 " style="margin:0 auto" method="POST" action="/registrar" modelAttribute="user">
    	<p>
    	 <div class="mb-2">
            <form:label class="form-label" path="nombre">nombre:</form:label>
            <form:input class="form-control" type="text" path="nombre"/>
             </div>
        </p>
        <p>
         <div class="mb-2">
            <form:label class="form-label" path="email">Email:</form:label>
            <form:input class="form-control" type="email" path="email"/>
             </div>
        </p>
        <p>
         <div class="mb-2">
            <form:label class="form-label" path="password">Password:</form:label>
            <form:password class="form-control" path="password"/>
        </p>
        <p>
         <div class="mb-2">
            <form:label class="form-label" path="passwordConfirmation">Confirmación Password:</form:label>
            <form:password class="form-control" path="passwordConfirmation"/>
             </div>
        </p>
        <input class="btn btn-primary w-100" type="submit" value="Registrate!"/>
    </form:form>
    
</body>
</html>