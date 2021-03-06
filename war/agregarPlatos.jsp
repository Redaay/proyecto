<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Agregar Platos </title>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">  
<script src="/js/jquery-1.11.3.min.js"></script> 
<script src="/js/plugins/jquery.form.js"></script>
<script> 
// wait for the DOM to be loaded 
$(document).ready(function() {
	
	// bind 'myForm' and provide a simple callback function 
	$('#myForm').ajaxForm(function() { 
		alert("¡El Plato ha sido guardado!"); 
	});
	
}); 
</script>
</head>
<body onLoad="document.getElementById('name').focus();">

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
                            <li><a href="pregunta.jsp">Preguntas </a></li>
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
<!-- Formulario que se envia asincronamente -->
<form id="myForm" action="plato" method="post"> 
	<label for="name">Nombre :</label>
	<input type="text" pattern="^[a-zA-Z_áéíóúñ\s]*$" name="name" id="name" required="required" placeholder="Ingrese nombre"><br>
	<label for="descripcion">Descripcion :</label> 
    <textarea name="descripcion" id="descripcion" required="required" placeholder="Ingrese descripcion"></textarea><br> 
	<label for="precio">Precio :</label>
	<input type="number"  name="precio" id="precio" min="0" max="100" required="required" placeholder="Ingrese su precio"><br>
    
    <label for="tipo">Tipo :</label>
			<select name="tipo" size="1">
	 			<option value="vegetariana">Vegetariana</option>
				<option value="tradicional">Tradicional</option>
				<option value="carnivora">Carnivora</option>
				<option value="tipica">Tipica</option>
				<option value="especial">Especial</option>
			</select>
		</div>
<div id="action"><input type="reset" value="Limpiar"/><input type="submit" value="Guardar plato" /> 
    
</form>
<br><a href="/platos" target="_blank">Ir al catalogo</a>
</div>
</div>        

    </section>    
   </body>
</html>