
<!-- Nav Bar -->
<div class="navbar-fixed">
	<nav>
	  <div class="nav-wrapper">
	    
	    <ul class="left hide-on-med-and-down">
	    	<li><a href="/Oristim/" class=""><img src="/Oristim/img/oristim.png" width="110"></a> </li>
	    </ul>
	  
	    <ul class="left hide-on-med-and-down">
	    	<li><a id="ofertas" href="/Oristim">Ofertas</a></li>
	      	
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
			<g:render template="/components/login_menu_view"/>
	    </ul>

	  </div>
	</nav>
</div>

<!-- Dropdown Consolas -->
<ul id="consolas" class="dropdown-content">
  	<li><a id="consolasWindows" href="/Oristim/plataforma/windows">Windows</a></li>
  	<li><a id="consolasXbox" href="/Oristim/plataforma/xbox">Xbox</a></li>
  	<li><a id="consolasPlayStation" href="/Oristim/plataforma/ps2">PlayStation</a></li>
  	<li class="divider"></li>
  	<li><a href="/Oristim/">Todas</a></li>
</ul>  

<!-- Dropdown Genero -->
<ul id="genero" class="dropdown-content">
  	<li><a id = "generoFPS" href="/Oristim/categoria/fps">FPS</a></li>
  	<li><a id = "generoRol" href="/Oristim/categoria/rpg">Rol</a></li>
  	<li><a id = "generoEstrategia" href="/Oristim/categoria/estrategia">Estrategia</a></li>
  	<li class="divider"></li>
  	<li><a href="/Oristim/">Todas</a></li>
</ul>  

<!-- Modal Carrito de Compras -->
<g:render template="/components/carritoCompras_view"/>
<!-- Modal de Login -->
<g:render template="/components/login_view"/>

<script type="text/javascript" src="/Oristim/jquery/jquery.js"></script>
<script type="text/javascript">	
	/*Cargar Dinamicamente Links*/
        
	$("#consolasWindows").click(function(){
		$("#show-frame").html("<h4>Consola: Windows</h4>");
		$("#mostrarJuegos").load(".//components/consolasWindows_view.html");
	});

	$("#consolasXbox").click(function(){
		$("#show-frame").html("<h4>Consola: Xbox</h4>");
		$("#mostrarJuegos").load(".//components/consolasXbox_view.html");
	});

	$("#consolasPlayStation").click(function(){
		$("#show-frame").html("<h4>Consola: PlayStation</h4>");
		$("#mostrarJuegos").load(".//components/consolasPlayStation_view.html");
	});

	$("#ofertas").click(function(){
		$("#show-frame").html("<h4>Ofertas</h4>");
		$("#mostrarJuegos").load(".//components/listaOfertas_view.html");
	});

	$("#generoFPS").click(function(){
		$("#show-frame").html("<h4>Genero: FPS</h4>");
		$("#mostrarJuegos").load(".//components/generoFPS_view.html");
	});
        
        $("#generoRol").click(function(){
		$("#show-frame").html("<h4>Genero: Rol</h4>");
		$("#mostrarJuegos").load(".//components/generoRol_view.html");
	});

        $("#generoEstrategia").click(function(){
		$("#show-frame").html("<h4>Genero: Estrategia</h4>");
		$("#mostrarJuegos").load(".//components/generoEstrategia_view.html");
	});
        
</script>


