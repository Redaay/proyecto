<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Controlador.*"%>
<%@ page import="Modelo.*"%><%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Menu</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen"> 
    
</head>
<body id="page2">
	<!--==============================header=================================-->
    <header>
    	<div class="row-top">
        	<div class="main">
            	<div class="wrapper">
                	<h1><a href="vista?vista=1">El<span>Calaminon</span></a></h1>
                    <nav>
                        <ul class="menu">
                            <li><a href="vista?vista=1">Principal</a></li>
                            <li><a class="active" href="vista?vista=2">Menu</a></li>
                            <li><a href="vista?vista=3">Catalogo </a></li>
                            <li><a href="vista?vista=4">Envios</a></li>
                            <li><a href="pregunta.jsp">Preguntas </a></li>
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
            <div class="wrapper">
            	<article class="col-1">
                	<div class="indent-left">
                        <div class="img-indent-bot">
                            <h3 class="prev-indent-bot">Oferta especial</h3>
                            <div class="wrapper img-indent-bot">
                                <figure class="img-indent"><img src="images/page2-img3.jpg" alt=""></figure>
                                <div class="extra-wrap">
                                    <h5>nombre del plato </h5>
                                    descripcion o receta
                                </div>
                            </div>
                        </div>
                        <h3 class="p1">Nuestros mejores platos</h3>
                            <div id="slider">
                            <div>
                                <div class="p2">
                                	<figure><a href="#"><img src="images/page2-img3.jpg" alt=""></a></figure>
                                    <h5>Nombre del plato</h5>
                                    (precio S/0.00)
                                </div>
                                <div class="p2">
                                	<figure><a href="#"><img src="images/page2-img3.jpg" alt=""></a></figure>
                                    <h5>Nombre del plato</h5>
                                    (precio S/0.00)
                                </div>
                                <figure><a href="#"><img src="images/page2-img3.jpg" alt=""></a></figure>
                                <h5>Nombre del plato</h5>
                                (precio S/0.00)
                            </div>
                            <div>
                                <div class="p2">
                                	<figure><a href="#"><img src="images/page2-img3.jpg" alt=""></a></figure>
                                    <h5>Nombre del plato</h5>
                                    (precio S/0.00)
                                </div>
                                <div class="p2">
                                	<figure><a href="#"><img src="images/page2-img3.jpg" alt=""></a></figure>
                                    <h5>Nombre del plato</h5>
                                    (precio S/0.00)
                                </div>
                                <figure><a href="#"><img src="images/page2-img3.jpg" alt=""></a></figure>
                                <h5>Nombre del plato</h5>
                                (precio S/0.00)
                            </div>
                            <div>
                                <div class="p2">
                                	<figure><a href="#"><img src="images/page2-img3.jpg" alt=""></a></figure>
                                    <h5>Nombre del plato</h5>
                                    (precio S/0.00)
                                </div>
                                <div class="p2">
                                	<figure><a href="#"><img src="images/page2-img3.jpg" alt=""></a></figure>
                                    <h5>Nombre del plato</h5>
                                    (precio S/0.00)
                                </div>
                                <figure><a href="#"><img src="images/page2-img3.jpg" alt=""></a></figure>
                                <h5>Nombre del plato</h5>
                                (precio S/0.00)
                            </div>
                            
                        </div>
                    </div>
                </article>
                <article class="col-2">
                	<h3>Lista de precios</h3>
                	<%try{ %>
                	<% List<Platos> platos = (List<Platos>)request.getAttribute("platos");%>
                	
                    <p>Mostrando <%= platos.size() %> platos</p>
<table BORDER="1"><tr><td WIDTH=1500><p>Name</p></td><td WIDTH=1000><p>Precio</p></td></tr>


	<%for( Platos c : platos ) {%>
<tr><td WIDTH=100><p><%= c.getName().toString() %></p></td>
<td WIDTH=100><p><%= c.getEmail() %></p></td>
		</tr>
	<%}%></table>
	<%}catch(NullPointerException e) { e.getMessage();}%>
                   
                </article>
            </div>
        </div>
    </section>
   </body>
</html>
