<%@ page import="session.SessionManager" %>
<%@ page import="oristim.*" %>
<!-- Modal Structure de Carrito de Compras -->
<div id="carritoCompras" class="modal modal-fixed-footer">
	<div class="modal-content">
	  <h4>Carrito de Compras</h4>
	  
	    <div id="carrito-lst" class="collection">
	    	%{-- Logica Java --}%
	    	<%try {
	    			def smgr = new SessionManager(request.session)
	    			def uid = smgr.getCurrentUsr().id
	    			def c = Usuario.get(uid).carritoTemp
	    			def juegosCarrito = c.juegos
	    			def total = juegosCarrito.sum{it.precio}	
		    %>
		   	    <g:each var="juego" in="${juegosCarrito}">
			      	<a href="#!" id="${juego.id}" class="collection-item"> <b>(${juego.precio} $)</b> ${juego.nombre} <span id="${juego.id}" class="delete-elem  badge new ">Eliminar</span></a>
		        </g:each>
		        <a href="#!" class="collection-item active">
	    		<i class="material-icons dp48">credit_card</i>
	    		Total de la Compra: <h5 id="total">${total} $</h5>
	    		</a>
	        <%}catch(Exception e){
	    		println("No hay juegos")			
	    	}%>

      	</div>
      	<a href="/venta/create" id="checkOut" class="waves-effect waves-light btn modal-close">
      		Confirmar
      	</a>
      	<a href="#!" id="cancel" onclick = "cancelar()"class="waves-effect waves-light btn modal-close">
      		Cancelar Carrito
      	</a>

	</div>
	<div class="modal-footer">
	  	<a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">
	  		Cerrar
	  	</a>
	</div>
</div>

<script type="text/javascript" src="/jquery/jquery.js"></script>
<script type="text/javascript">
	
	//$("#checkOut").click(function(){
	//	Materialize.toast('Checkout realizado !', 7000 , null)
	//});

	$(".delete-elem").click(function(){
		
		var gameId = parseInt( $(this).attr('id') );

		$("#"+gameId).hide(300);
		var time = 1000;
		$.ajax( "/borrar/"+gameId ).done(function( resp ){	
			Materialize.toast('Juego eliminado', time);
			// alert(resp.total)
			if(resp.total == 0) $("#total").text('0 $');
			$("#total").text(resp.total + " $");
		});
			
	});

	function cancelar(){
		$.ajax( "/agregarJuego/eliminarCarrito" )
		location.reload()
	}
</script>