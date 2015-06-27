<!DOCTYPE html>
<html lang="en">
<head>
    <title>Contacto</title>
    <meta charset="utf-8">
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
		alert("e-mail enviado correctamente"); 
	});
	
}); 
</script>
</head>
<body id="page6" onLoad="document.getElementById('name').focus();">
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
                            <li><a href="pregunta.jsp"">Preguntas </a></li>
                            <li><a class="active" href="vista?vista=6">Contactanos</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="row-bot">
        	<div class="row-bot-bg">
            	<div class="main">
                	<h2>Impresionante Seleccion <span>para cualquier ocasion</span></h2>
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
                    	<h3 class="p1">Nuestros Numero de Contacto</h3>
                        
                        <dl>
                            <dt class="p1">USA 8901 Marmora Rd, Glasgow</dt>
                            <dd><span>Llamada gratuita:</span>  111111111</dd>
                            <dd><span>Telefonno:</span>  1111111111</dd>
                            <dd><span>Fax:</span>  1111111111</dd>
                            <dd><span>Email:</span><a class="color-2" href="#">xxx@comida.org</a></dd>
                        </dl>
                    </div>
                </article>
                <article class="col-2">
                	<h3 class="p1">Formulario de contacto</h3>
                    <form id="myForm" action="contacto" method="post"> 
	<label for="name">Nombre :</label>
	<input type="text" pattern="^[a-zA-Z_αινσϊρ\s]*$" name="name" id="name" required="required" placeholder="Ingrese nombre"><br>
	<label for="name">Email :</label>
	<input type="text" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" name="email" id="email" required="required" placeholder="Ingrese email">Ejem: example@algo.com<br>
	
	<label for="descripcion">Mensaje :</label> 
    <textarea name="descripcion" id="descripcion" required="required" placeholder="Ingrese mensaje"></textarea><br> 
	
    <div id="action"><input type="reset" value="Limpiar"/><input  type="submit" value="Enviar email" /> 
    
</form>
                </article>
            </div>
        </div>
    </section>
</body>
</html>
