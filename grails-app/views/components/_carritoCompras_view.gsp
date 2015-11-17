<!-- Modal Structure de Carrito de Compras -->
<div id="carritoCompras" class="modal modal-fixed-footer">
	<div class="modal-content">
	  <h4>Carrito de Compras</h4>
	  
	    <div id="carrito-lst" class="collection">
		    %{-- <g:each var="juego" in="${juegosCarrito}"> --}%
	        	<a href="#!" class="collection-item"><span class="new badge">Borrar</span></a>
	        %{-- </g:each> --}%
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

	$("#carrito").click(function(){
		$.ajax( "/Oristim/carrito").done(function(resp){
			console.log(resp);
			// $("#carrito-lst").load(resp);
		});
	});
</script>