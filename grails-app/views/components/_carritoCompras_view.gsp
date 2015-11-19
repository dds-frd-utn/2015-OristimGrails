<%@ page import="session.SessionManager" %>
<!-- Modal Structure de Carrito de Compras -->
<div id="carritoCompras" class="modal modal-fixed-footer">
	<div class="modal-content">
	  <h4>Carrito de Compras</h4>
	  
	    <div id="carrito-lst" class="collection">
	    	%{-- Logica Java --}%
	    	<%try {
	    			def smgr = new SessionManager(request.session)
	    			def c = smgr.getCurrentCart()
	    			def juegosCarrito = c.juegos	
		    %>
		   	    <g:each var="juego" in="${juegosCarrito}">
			      	<a href="#!" id="${juego.id}" class="collection-item">${juego.nombre}<span id="${juego.id}" class="delete-elem new badge">Borrar</span></a>
		        </g:each>
	        <%}catch(Exception e){
	    		println("No hay juegos")			
	    	}%>
      	</div>
      	<a href="#!" id="checkOut" class="waves-effect waves-light btn modal-close">
      		Confirmar
      	</a>

	</div>
	<div class="modal-footer">
	  	<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">
	  		Cerrar
	  	</a>
	</div>
</div>

<script type="text/javascript" src="/Oristim/jquery/jquery.js"></script>
<script type="text/javascript">
	$("#checkOut").click(function(){
		Materialize.toast('Checkout realizado !', 7000 , null)
	});

	$(".delete-elem").click(function(){
		
		var gameId = parseInt( $(this).attr('id') );

		$("#"+gameId).hide(300);
		var time = 1000;
		$.ajax( "/Oristim/borrar/"+gameId ).done(function( resp ){	
			Materialize.toast('Juego eliminado', time);
		});
			
	});
</script>