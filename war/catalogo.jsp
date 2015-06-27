<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Controlador.*"%>
<%@ page import="Modelo.*"%><%@ page import="java.util.List"%>
<% List<Platos> platos = (List<Platos>)request.getAttribute("platos");%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Catalogo</title>
    <style type="text/css">
  table { 
  border-collapse: separate; 
}
  </style>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen"> 
    <link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen">
    
</head>
<body id="page3">

    <header>
    	<div class="row-top">
        	<div class="main">
            	<div class="wrapper">
                	<h1><a href="vista?vista=1">El<span>Calaminon</span></a></h1>
                    <nav>
                        <ul class="menu">
                            <li><a href="vista?vista=1">Principal</a></li>
                            <li><a href="vista?vista=2">Menu</a></li>
                            <li><a class="active" href="vista?vista=3">Catalogo </a></li>
                            <li><a href="vista?vista=4">Envios</a></li>
                            <li><a href="vista?vista=5">Preguntas </a></li>
                            <li><a href="vista?vista=6">Contactanos</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="row-bot">
        	<div class="row-bot-bg">
            	<div class="main">
                	<h2>Impresionante seleccion <span>para cualquier ocasion</span></h2>
                </div>
            </div>
        </div>
    </header>
    
	<!--==============================content================================-->
    <section id="content"><div class="ic"></div>
        <div class="main">
            <div class="container">
            	<h3 class="prev-indent-bot">Catalogo</h3>
<p>Mostrando <%= platos.size() %> platos</p>
<table BORDER="1"><tr><td WIDTH=2000><p>Name</p></td><td WIDTH=2000><p>Descripcion</p></td><td WIDTH=2000><p>Precio</p></td><td WIDTH=2000><p>Tipo</p></td></tr>



	<%for( Platos c : platos ) {%>
<tr><td WIDTH=100><p><%= c.getName().toString() %></p></td>
<td WIDTH=100><p><%= c.getLastname() %></p></td>
<td WIDTH=100><p><%= c.getEmail() %></p></td>
<td WIDTH=100><p><%= c.getColor() %></p></td>

		</tr>
	<%}%></table>
</div>
            </div>
    </section>
    </body>
</html>
