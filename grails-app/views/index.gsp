<!DOCTYPE HTML>
<html>
<head>
	<!-- Librerias CSS Materialize y Material -->
	<!-- <link rel="stylesheet" href="./mdl/material.min.css">
	<script src="./mdl/material.min.js"></script> -->

	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link type="text/css" rel="stylesheet" href="./materialize/css/materialize.min.css"  media="screen,projection"/>

	<!-- Librerias CSS propias -->
	<link rel="stylesheet" href="./css/common.css">
	<link rel="stylesheet" href="./css/propios.css">

	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		
	<title>Oristim - Index</title>
</head>


<!-- INICIO PAGINA -->
<body>
	<!-- Barra de Navegacion de la pagina -->
        <g:render template="components/menuNavBar_view"/>
 
 	<!-- Slider con imagenes de Juegos --> 
        <g:render template="components/gameSlider_view"/>
         
 	<div id= "show-frame" class="show-frame">
	  	<h4>Ofertas</h4>
	</div>	
                                       
  	<div class="section white">
	    <div class="row container">
		    <h2 class="header"><!-- Nuestros Juegos: --></h2>					 
		    <!-- <p class="grey-text text-darken-3 lighten-3">Descripcion de la pagina</p>-->
		    <!-- Mostrar Ofertas de Juegos -->
            	<g:render template="components/listaOfertas_view"/>
	    </div>
  	</div>  		  
</body>

<!-- Footer de la pagina -->
	<g:render template="components/pageFooter_view"/>
</html> 
<!-- Incluir Scripts -->
<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript" src="./materialize/js/materialize.min.js"></script>
<!-- Iniciar Librerias Propias JS -->
<script type="text/javascript" src="./js/common.js"></script>