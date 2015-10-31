
<!-- Nav Bar -->
<div class="navbar-fixed">
	<nav>
	  <div class="nav-wrapper">
	    
	    <ul class="left hide-on-med-and-down">
	    	<li><a href="#!" class=""><img src="./img/oristim.png" width="110"></a> </li>
	    </ul>
	  
	    <ul class="left hide-on-med-and-down">
	    	<li><a id="ofertas" href="#!">Ofertas</a></li>
	      	
	      	<!-- Activar Dropdown de Consolas -->
	      	<li><a class="dropdown-button" href="#!" data-activates="consolas">Consolas<i class="material-icons right">arrow_drop_down</i></a></li>

	      	<!-- Activar Dropdown de Genero -->
	      	<li><a class="dropdown-button" href="#!" data-activates="genero">Genero<i class="material-icons right">arrow_drop_down</i></a></li>

	    </ul>

	    <ul class="right hide-on-med-and-down">
	      <!-- Activar Dropdown de Carrito de Compras -->
	      	<li>
	      		  <a class="modal-trigger" href="#carritoCompras"><i class="large material-icons">shopping_cart</i></a>
	      	</li>
	      <!-- Activar Dropdown de Login (Cargado mediante Vista)-->
			<g:render template="components/login_menu_view"/>
	    </ul>

	  </div>
	</nav>
</div>

<!-- Dropdown Consolas -->
<ul id="consolas" class="dropdown-content">
  	<li><a id="consolasWindows" href="#!">Windows</a></li>
  	<li><a id="consolasXbox" href="#!">Xbox</a></li>
  	<li><a id="consolasPlayStation" href="#!">PlayStation</a></li>
  	<li class="divider"></li>
  	<li><a href="#!">Todas</a></li>
</ul>  

<!-- Dropdown Genero -->
<ul id="genero" class="dropdown-content">
  	<li><a id = "generoDisparo"  href="#!">FPS</a></li>
  	<li><a id = "generoRol" 	 href="#!">Rol</a></li>
  	<li><a id = "generoEstrategia" href="#!">Estrategia</a></li>
  	<li class="divider"></li>
  	<li><a href="">Todas</a></li>
</ul>  

<!-- Modal Carrito de Compras -->
<g:render template="components/carritoCompras_view"/>
<!-- Modal de Login -->
<g:render template="components/login_view"/>

<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript">	
	/*Cargar Dinamicamente Links*/
        
	$("#consolasWindows").click(function(){
		$("#show-frame").html("<h4>Consola: Windows</h4>");
		$("#mostrarJuegos").load("./components/consolasWindows_view.html");
	});

	$("#consolasXbox").click(function(){
		$("#show-frame").html("<h4>Consola: Xbox</h4>");
		$("#mostrarJuegos").load("./components/consolasXbox_view.html");
	});

	$("#consolasPlayStation").click(function(){
		$("#show-frame").html("<h4>Consola: Play station 3</h4>");
		$("#mostrarJuegos").load("./components/consolasPlayStation_view.html");
	});

	$("#ofertas").click(function(){
		$("#show-frame").html("<h4>Ofertas</h4>");
		$("#mostrarJuegos").load("./components/listaOfertas_view.html");
	});

	$("#generoDisparo").click(function(){
		$("#show-frame").html("<h4>Genero: Disparo</h4>");
		$("#mostrarJuegos").load("./components/generoDisparo_view.html");
	});

</script>


