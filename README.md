# Oristim
![oristim](http://i.imgur.com/EYeMvFe.png?1)

Proyecto de venta de videojuegos realizado por el Grupo 1 - Casas, Colussi, Moreira y Sanches

Link a la documentacion:
https://docs.google.com/document/d/1bqvJG9M8WTRZPpiMZ9cD_ipyvGLqs8-y-86ZbU9FSI4

# Que es oristim?
Oristim = Origin + Steam.
(Paginas de vistas HTML del TP2 de Diseño).

# Cuestiones:
De momento la pagina solo funciona para Firefox. No funciona en los demas navegadores.

Para utilizarse con Google Chrome, por ejemplo, debe usarse un webserver, de lo contrario no funciona la inclusion de paginas html mediante la sentencia de jQuery:

	
	<script type="text/javascript">
		$("#id_elem1").load("ruta1"); 
		$("#id_elem2").load("ruta2"); 
		$("#id_elem3").load("ruta3"); 	
	</script>
