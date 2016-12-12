
<!-- Nav Bar -->
<div class="navbar-fixed">
	<nav>
	  <div class="nav-wrapper">
	    
	    <ul class="left hide-on-med-and-down">
	    	<li><a href="/" class=""><img src="/img/oristim100tifiko.png" style="margin-top:10px"width="125"></a> </li>
	    </ul>
	  
	    <ul class="left hide-on-med-and-down">
	   %{-- 	<li><a id="ofertas" href="/">Ofertas</a></li>
	   --}%
	      	<!-- Activar Dropdown de Consolas -->
	      	<li><a class="dropdown-button" href="#!" data-activates="consolas">Consolas<i class="material-icons right">arrow_drop_down</i></a></li>

	      	<!-- Activar Dropdown de Genero -->
	      	<li><a class="dropdown-button" href="#!" data-activates="genero">Genero<i class="material-icons right">arrow_drop_down</i></a></li>

	    </ul>

	    <ul class="right hide-on-med-and-down">
	      <!-- Activar Dropdown de Carrito de Compras -->
	      	<li>
	      		  <a id="carrito" class="modal-trigger" href="#carritoCompras"><i class="large material-icons">shopping_cart</i></a>
	      	</li>
	      	<li>
	      		  <a id="carrito" class="modal-trigger" href="/venta">Mis Compras</a>
	      	</li>
	      <!-- Activar Dropdown de Login (Cargado mediante Vista)-->
			<g:render template="/components/login_menu_view"/>
	    </ul>

	  </div>
	</nav>
</div>

<!-- Dropdown Consolas -->
<ul id="consolas" class="dropdown-content">
  	<li><a id="consolasWindows" href="/plataforma/windows">Windows</a></li>
  	<li><a id="consolasXbox" href="/plataforma/xbox">Xbox</a></li>
  	<li><a id="consolasPlayStation" href="/plataforma/ps2">PlayStation</a></li>
  	<li class="divider"></li>
  	<li><a href="/">Todas</a></li>
</ul>  

<!-- Dropdown Genero -->
<ul id="genero" class="dropdown-content">
  	<li><a id = "generoFPS" href="/categoria/fps">FPS</a></li>
  	<li><a id = "generoRol" href="/categoria/rpg">Rol</a></li>
  	<li><a id = "generoEstrategia" href="/categoria/estrategia">Estrategia</a></li>
  	<li class="divider"></li>
  	<li><a href="/">Todas</a></li>
</ul>  

<!-- Modal Carrito de Compras -->
<g:render template="/components/carritoCompras_view"/>
<!-- Modal de Login -->
<g:render template="/components/login_view"/>

<script type="text/javascript" src="/jquery/jquery.js"></script>
<script type="text/javascript">	
	/*Cargar Dinamicamente Links*/
</script>


