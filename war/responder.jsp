<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Controlador.*"%>
<%@ page import="Modelo.*"%>
<%@ page import="java.util.List" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<title>Programación Web con Google App Engine</title>
</head>
<body>
<div class="Table">
	<div class="Title"><p>Lista de personas</p></div>
	<div class="Heading">
		<div class="Cell"><p>Nombre</p></div>
		<div class="Cell"><p>Pregunta</p></div>
	</div>

<%
for( Comentario persona : (List<Comentario>)request.getAttribute("comentarios") ) {
	
%>
	<div class="Row">
		<div class="Cell"><p><%= persona.getName() %></p></div>
		<div class="Cell"><p><%= persona.getComment() %></p></div>
	</div>
<%
}
%>

</div>
</body>
</html>