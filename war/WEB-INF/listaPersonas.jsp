<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Controlador.*"%>
<%@ page import="Modelo.*"%>

<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="es">
<head>
<title>Agregar Administradores</title>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">  
<script src="/js/jquery-1.11.3.min.js"></script> 
<script src="/js/plugins/jquery.form.js"></script>
<script> 
// wait for the DOM to be loaded 
$(document).ready(function() {
	// prepare Options Object 
	var options = { 
	    target:     '#caja_ajax', 
	    url:        '/ajax03', 
	    success:    function() { 
	        alert('¡Se ha creado un nuevo Administrador!'); 
	    } 
	}; 
	// pass options to ajaxForm 
	$('#formPersona').ajaxForm(options);
	
	var options2 = { 
	    target:     '#caja_ajax', 
	    url:        '/ajax04_1', 
	    success:    function() { 
	        alert('¡Se han eliminado Administradores!'); 
	    } 
	}; 
	// pass options to ajaxForm
	$('#listaPersonas').ajaxForm(options2);
}); 
</script>
</head>
<body id="page5">
   <%
            boolean mostrarFormPersona = Boolean.valueOf(request.getAttribute("formPersona").toString());
            if( mostrarFormPersona==true ){ %>
	<!--==============================header=================================-->
    <header>
    	<div class="row-top">
        	<div class="main">
            	<div class="wrapper">
                	<h1><a href="vista?vista=1">El<span>Calaminon</span></a></h1>
                    <nav>
                        <ul class="menu">
                            <li><a href="vista?vista=1">Principal</a></li>
                            <li><a href="vista?vista=2">Menu</a></li>
                            <li><a href="vista?vista=3">Catalogo </a></li>
                            <li><a href="vista?vista=4">Envios</a></li>
                            <li><a href="vista?vista=5">Preguntas </a></li>
                            <li><a href="vista?vista=6">Contactanos</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
<!--==============================content================================-->
   <section id="content"><div class="ic"></div>
        <div class="main">
            <div class="container">
            <!-- Form Persona -->
         
            	<%@include file="formPersona.jsp" %>
            <%}%>
            <%List<Administrador> personas = (List<Administrador>) request.getAttribute("personas");%>
            <br/><br/>
            <div id="caja_ajax">
            	<form name="listaPersonas" id="listaPersonas" method="post" action="borrarAdministrador">
            		<fieldset><legend>Lista de personas (<%= personas.size() %> encontradas)</legend>
            				<div class="Table">
			<!-- <div class="Title"><p><%= personas.size() %> personas encontradas</p></div>  -->
				<table>
				<tr><td WIDTH=100></td><td WIDTH=100><p>Id</p></td>
				<td WIDTH=100><p>Usuario</p></td></tr>
			<%for( Administrador p : personas ) {%>

					<tr><td WIDTH=100><p><input type="checkbox" name="elegidos" value="<%=p.getId()%>"></td><td WIDTH=100><span for="<%=p.getId()%>"><%=p.getId()%></span></p></td>
					<td WIDTH=100><p><%= p.getName() %></p></td></tr>
			<%}%>
			</table>
		</div>
		<div class="fila">
			<div id="action"><input type="submit" value="Eliminar" /></div>
		</div>
	</fieldset>
	</form>
<!--  -->	
</div>
</div>        

        </div>
    </section>    
   </body>
</html>