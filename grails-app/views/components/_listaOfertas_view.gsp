<%@ page import="oristim.Juego" %>

%{-- Ruta de imagenes para juegos. De la forma: "img/juego1.jpg" --}%
%{-- <% def juegosList= Juego.getAll()%> --}%
<g:each var="juego" in="${juegosList}">
    <div class="col s12 m7" >  
	    <div class="card medium">
		    <div class="card-image waves-effect waves-block waves-light">
		    	<img class="activator" src="${juego.imgroute}">
		    </div>
		   	<div class="price">
		   		<p>Valor: $${juego.precio}</p>
		   	</div>
		   	<div class="plataforma">
		   		<p>${juego.plataforma}</p>
		   	</div>
		    <div class="card-content">
		      	<span class="card-title activator grey-text text-darken-4">
		      		${juego.nombre}
		      		<i class="material-icons right">more_vert</i>
		      	</span>
		    </div>
		    <div class="card-reveal">
		      	<span class="card-title grey-text text-darken-4">
		      		Información:
		      		<i class="material-icons right">close</i>
		      	</span>
		      	<p>${juego.informacion}</p>	      		
		      	<a href="#!" id="${juego.id}" class="btnAddGme waves-effect waves-light btn">
		      		Comprar
		      	</a>
		    </div>
		</div>  
	</div>
</g:each>

<script type="text/javascript" src="/jquery/jquery.js"></script>
<script type="text/javascript">
	// Cuando se hace click en algun boton de la clase btnAddGame...
	$(".btnAddGme").click(function(){
		
		// Capturamos el id del boton (Representa id de un juego).
		var gameId = parseInt( $(this).attr('id') );

		$.post("/login/isSessionActive").done(function( resp ) {

            if( resp == 'false' ){
        		$("#loginLink").click();
        		
            }
            
            // Ejecutamos ajax para agregar carrito.
   			$.ajax( "/agregar/"+gameId )
   			.done(function(){
   				var time = 300;
				Materialize.toast('Agregado al carrito (Ver Consola) Id:'+gameId, time);
				setTimeout(
  					function(){
    					window.location.reload();  
  				},time);
				
			})
			.fail(function(){
				Materialize.toast('Error al agregar juego. Juego ya comprado.', 4000 , 'errorMsg');
			});

               
        });
	});
</script>