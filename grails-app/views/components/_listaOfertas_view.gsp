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
<!-- Una Etiqueta de Juego -->
<div class="col s12 m7" >  
    <div class="card medium">
	    <div class="card-image waves-effect waves-block waves-light">
	    	<img class="activator" src="img/img4.jpg">
	    </div>
	   	<div class="price"><p>Valor: $200</p></div>
	    <div class="card-content">
	      	<span class="card-title activator grey-text text-darken-4">World Of Warcraft<i class="material-icons right">more_vert</i></span>
	      	<p><a href="#">Mas informacion</a></p>
	    </div>
	    <div class="card-reveal">
	      	<span class="card-title grey-text text-darken-4">Descripcion:<i class="material-icons right">close</i></span>
	      	<p>Descripcion del Juego</p>	      		
	 
	      	<a id="buttonAdd" class="btn-floating btn-large waves-effect waves-light red">Buy</a>
	    </div>
	</div>  
</div>

<!-- Una Etiqueta de Juego -->
<div class="col s12 m7" >  
    <div class="card medium">
	    <div class="card-image waves-effect waves-block waves-light">
	    	<img class="activator" src="img/img3.jpg">
	    </div>
	    <div class="price"><p>Valor: $200</p></div>
	    <div class="card-content">
	      	<span class="card-title activator grey-text text-darken-4">Medal of Honor<i class="material-icons right">more_vert</i></span>
	      	<p><a href="#">Mas Informacion</a></p>
	    </div>
	    <div class="card-reveal">
	      	<span class="card-title grey-text text-darken-4">Descripcion:<i class="material-icons right">close</i></span>
	      	<p>
	      		Descripcion del Juego
	      	</p>
	      	<a class="btn-floating btn-large waves-effect waves-light red">Buy</a>
	    </div>
	</div>  
</div>

<!-- Una Etiqueta de Juego -->
<div class="col s12 m7" >  
    <div class="card medium">
	    <div class="card-image waves-effect waves-block waves-light">
	    	<img class="activator" src="img/img5.jpg">
	    </div>
	    <div class="price"><p>Valor: $200</p></div>
	    <div class="card-content">
	      	<span class="card-title activator grey-text text-darken-4">Age of Empires<i class="material-icons right">more_vert</i></span>
	      	<p><a href="#">Mas Informacion</a></p>
	    </div>
	    <div class="card-reveal">
	      	<span class="card-title grey-text text-darken-4">Descripcion:<i class="material-icons right">close</i></span>
	      	<p>
	      		Descripcion del Juego
	      	</p>
	      	<a class="btn-floating btn-large waves-effect waves-light red">Buy</a>
	    </div>
	</div>  
</div>

<div id="llenar"></div>
<script type="text/javascript">
	$("#buttonAdd").click(function(){
		Materialize.toast('Agregado al carrito', 3000 , 'rounded');
	});
</script>