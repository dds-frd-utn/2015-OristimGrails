<%@ page import="oristim.Juego" %>
<style type="text/css">
	.price{
		text-align: center;
		margin-top: 25%;
		margin-left: 63%;
		background-color: #936262;
		width: 35%;
		height: 30px;
		position: absolute;
		border-radius: 15px;
		color: white;
	}
	.price p{
		margin-top: 4px;
	}
</style>

%{-- Ruta de imagenes para juegos. De la forma: "img/juego1.jpg" --}%
%{-- <% def juegosList= Juego.getAll()%> --}%
<g:each var="juego" in="${juegosList}">
    <div class="col s12 m7" >  
	    <div class="card medium">
		    <div class="card-image waves-effect waves-block waves-light">
		    	<img class="activator" src="/Oristim/${juego.imgroute}">
		    </div>
		   	<div class="price">
		   		<p>Valor: $${juego.precio}</p>
		   	</div>
		    <div class="card-content">
		      	<span class="card-title activator grey-text text-darken-4">
		      		${juego.nombre}
		      		<i class="material-icons right">more_vert</i>
		      	</span>
		      	<p><a href="#">Mas informacion</a></p>
		    </div>
		    <div class="card-reveal">
		      	<span class="card-title grey-text text-darken-4">
		      		Informacion:
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

<script type="text/javascript" src="/Oristim/jquery/jquery.js"></script>
<script type="text/javascript">
	// Cuando se hace click en algun boton de la clase btnAddGame...
	$(".btnAddGme").click(function(){
		
		// Capturamos el id del boton (Representa id de un juego).
		var gameId = parseInt( $(this).attr('id') );

		$.post("/Oristim/login/isSessionActive").done(function( resp ) {

            if( resp == 'false' ){
        		$("#loginLink").click();
        		
            }
            
            // Ejecutamos ajax para agregar carrito.
   			$.ajax( "/Oristim/agregar/"+gameId )
   			.done(function(){
				Materialize.toast('Agregado al carrito (Ver Consola) Id:'+gameId, 3000);
			})
			.fail(function(){
				Materialize.toast('Error al agregar juego', 4000 , 'errorMsg');
			});

               
        });
	});
</script>