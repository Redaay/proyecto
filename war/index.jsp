<!DOCTYPE html>
<html lang="en">
<head>
    <title>Principal</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen"> 
</head>
<body id="page1">

    <header>
    	<div class="row-top">
        	<div class="main">
            	<div class="wrapper">
                	<h1><a href="vista?vista=1">El<span>Calaminon</span></a></h1>
                    <nav>
                        <ul class="menu">
                            <li><a class="active" href="vista?vista=1">Principal</a></li>
                            <li><a href="vista?vista=2">Menu</a></li>
                            <li><a href="vista?vista=3">Catalogo </a></li>
                            <li><a href="vista?vista=4">Envios</a></li>
                            <li><a href="pregunta.jsp">Preguntas </a></li>
                            <li><a href="vista?vista=7">Contactanos</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="row-bot">
        	<div class="row-bot-bg">
            	<div class="main">
                	<h2>Impresionante seleccion <span>para cualquier ocasion</span></h2>
                    <div class="slider-wrapper">
                        <div class="slider">
                            <ul class="items">
                                <li>
                                    <img src="images/slider-img1.jpg" alt="" />
                                </li>
                                <li>
                                    <img src="images/slider-img2.jpg" alt="" />
                                </li>
                                <li>
                                    <img src="images/slider-img3.jpg" alt="" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
	<!--==============================content================================-->
    <section id="content"><div class="ic"></div>
        <div class="main">
            <div class="wrapper img-indent-bot">
                <article class="col-1">
                	<a href="envios.jsp"><img class="img-border" src="images/banner-1.jpg" alt=""></a>
                </article>
                <article class="col-1">
                	<a href="#"><img class="img-border" src="images/banner-2.jpg" alt=""></a>
                </article>
                <article class="col-2">
                	<a href="#"><img class="img-border" src="images/banner-3.jpg" alt=""></a>
                </article>
            </div>
            <div class="wrapper">
            	<article class="column-1">
                	<div class="indent-left">
                        <div class="maxheight indent-bot">  
                        <%
                        try{
                        	String n = (String)session.getAttribute("name");
                        	if(session.getAttribute("name")==null){ %>
                            <h3>Login</h3>
                            <form action="iniciar" method="get">
                                Usuario: <input type="text" name="name" required="required" placeholder="Ingrese usuario"><br>
                                Contrasena: <input type="password" name="color" required="required" placeholder="Ingrese contrasena"><br>
                               <div id="action"><input type="reset" value="Limpiar"/><input type="submit" value="Login">
                             </form>
                             <%}else{ %>
                             <h3>Administrador <%=n %></h3>
                             <form action="administra.jsp" method="get">
                               <input type="submit" value="Administrar">
                             </form>
                             <form action="cerrar" method="get">
                               <input type="submit" value="Cerrar Sesion">
                             </form>
                                 <% }
                        	}catch(NullPointerException e){
                                	 e.getMessage();
                                	 } %>
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </section>
</body>
</html>
