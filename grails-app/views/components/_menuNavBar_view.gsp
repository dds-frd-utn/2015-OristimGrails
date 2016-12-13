<%@ page import="oristim.*" %>
<!-- Nav Bar -->
<div class="navbar-fixed">
	<nav>
	  <div class="nav-wrapper">
	    
	    <ul class="left hide-on-med-and-down">
	    	<li><a href="/" class=""><img src="/img/oristimPiola.png" style="margin-top:15px"width="125"></a> </li>
	    </ul>
	  
	    <ul class="left hide-on-med-and-down">
	      	<!-- Activar Dropdown de Consolas -->
	      	<li><a class="dropdown-button" href="#!" data-activates="consolas">Plataforma<i class="material-icons right">arrow_drop_down</i></a></li>

	      	<!-- Activar Dropdown de Genero -->
	      	<li><a class="dropdown-button" href="#!" data-activates="genero">Categoria<i class="material-icons right">arrow_drop_down</i></a></li>
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

<% 
	//Devuelve todas las categorias de los juegos.
	def j = Juego.findAll()
	def categorias = j.collect{it.categoria}.unique()
	def plataformas = j.collect{it.plataforma}.unique()
%>

<!-- Dropdown plataformas -->
<ul id="consolas" class="dropdown-content">

	%{-- Armamos dinamicamente la lista de plataformas (consolas) --}%
	<g:each in="${plataformas}" var="plataforma">
	  	<li><a id = "generoFPS" href="/plataforma/${plataforma}">${plataforma}</a></li>
	</g:each>
  
  	<li class="divider"></li>
  	<li><a href="/">Todas</a></li>
</ul>  

<!-- Categorias -->
<ul id="genero" class="dropdown-content">

	%{-- Armar dinamicamente Lista de Categorias --}%
	<g:each in="${categorias}" var="categoria">
	  	<li><a id = "generoFPS" href="/categoria/${categoria}">${categoria}</a></li>
	</g:each>

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


