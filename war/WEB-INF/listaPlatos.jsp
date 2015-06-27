<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Controlador.*"%>
<%@ page import="Modelo.*"%>
<%@ page import="java.util.List"%>
<% List<Platos> platos = (List<Platos>)request.getAttribute("platos");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<title></title>

</head>
<body>

<div class="Table">
	<div class="Title"><p>Mostrando <%= platos.size() %> platos</p></div>
	<div class="Heading">
	<div class="Cell"><p>Name</p></div>
	<div class="Cell"><p>Descripcion</p></div>
	<div class="Cell"><p>Precio</p></div>
	</div>
	<%for( Platos c : platos ) {%>
<p><%= c.getName().toString() %></p>
<p><%= c.getLastname() %></p>
<p><%= c.getEmail() %></p>
<p><%= c.getColor() %></p>

		</div>
	<%}%>

</body>
</html>