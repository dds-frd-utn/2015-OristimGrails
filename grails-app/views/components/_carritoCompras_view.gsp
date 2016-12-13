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
	    			if (total == null)	 total = 0
		    %>
		   	    <g:each var="juego" in="${juegosCarrito}">
			      	<a href="#!" id="${juego.id}" class="collection-item"> <b>${juego.nombre} ($${juego.precio})</b> <span id="${juego.id}" class="delete-elem  badge new ">Eliminar</span></a>
		        </g:each>
		        <a href="#!" class="collection-item active">
	    		<i class="material-icons dp48">credit_card</i>
	    		Total de la Compra: <h5 id="total" align="right">$${total}</h5>
	    		</a>
	        <%}catch(Exception e){
	    		println("No hay juegos")			
	    	}%>

      	</div>
      	<a  id="checkOut" onclick = "validarCarrito()" class="waves-effect waves-light btn modal-close">
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

	$(".delete-elem").click(function(){
		
		var gameId = parseInt( $(this).attr('id') );

		$("#"+gameId).hide(300);
		var time = 1000;
		$.ajax( "/borrar/"+gameId ).done(function( resp ){	
			Materialize.toast('Juego eliminado', time);
			$("#total").text("$ " + resp.total);
			if(resp.total == 0) $("#total").text("$0");
			if(resp.total == null){
				resp.total = 0
			}
			$("#total").text("$ " + resp.total);
		});	
	});

	function cancelar(){
		$.ajax( "/agregarJuego/eliminarCarrito" )
		location.reload()
	}

	function validarCarrito(){
		if ( $(".delete-elem").length >  0)  // pregunto si tiene algun juego cargado
		 	window.location.assign( "/venta/create" ) 
		else Materialize.toast('El carrito está vacio, debe elegir al menos un juego.', 4000 , 'errorMsg');
	}
</script>