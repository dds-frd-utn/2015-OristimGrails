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
<% def juegosList= Juego.getAll()%>
<g:each in="${juegosList}">
    <div class="col s12 m7" >  
	    <div class="card medium">
		    <div class="card-image waves-effect waves-block waves-light">
		    	<img class="activator" src="${it.imgroute}">
		    </div>
		   	<div class="price"><p>Valor: ${it.precio}</p></div>
		    <div class="card-content">
		      	<span class="card-title activator grey-text text-darken-4">
		      		${it.nombre}
		      		<i class="material-icons right">more_vert</i>
		      	</span>
		      	<p><a href="#">Mas informacion</a></p>
		    </div>
		    <div class="card-reveal">
		      	<span class="card-title grey-text text-darken-4">
		      		Informacion:
		      		<i class="material-icons right">close</i>
		      	</span>
		      	<p>${it.informacion}</p>	      		
		      	<a id="${it.id}" class="btnAddGme btn-floating btn-large waves-effect waves-light red">Buy</a>
		    </div>
		</div>  
	</div>
</g:each>

<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript">
	// Cuando se hace click en algun boton de la clase btnAddGame...
	$(".btnAddGme").click(function(){
		
		// Capturamos el id del boton (Representa id de un juego).
		var gameId = parseInt( $(this).attr('id') );

		$.post("login/isSessionActive").done(function( resp ) {
            if(resp == "false"){
        		$("#loginLink").click();
            }
            else{
            	// Aca codificamos que es lo que sucede si el usuario esta logeado
            	// y quiere agregar un juego al carrito.
            	Materialize.toast('Agregado al carrito. (Id = '+gameId+' )', 3000 , 'rounded');
            }    
        });
	});
</script>