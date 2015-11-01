<!-- Modal Structure de Carrito de Compras -->
<div id="carritoCompras" class="modal modal-fixed-footer">
	<div class="modal-content">
	  <h4>Carrito de Compras</h4>
	  
	    <div class="collection">
        	<a href="#!" class="collection-item">World Of Warcraft<span class="new badge">Borrar</span></a>
        	<a href="#!" class="collection-item">Company of Heroes<span class="new badge">Borrar</span></a>
        	<a href="#!" class="collection-item">Call of Duty 4<span class="new badge">Borrar</span></a>
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

<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript">
	$("#checkOut").click(function(){
		Materialize.toast('Checkout realizado !', 7000 , null)
	});
</script>