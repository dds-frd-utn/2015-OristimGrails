package oristim

/**
* La venta se produce cuando el usuario ha decidido que 
* va a comprar un carrito y hace checkout del mismo.
* agregando de "forma simbolica" su tarjeta de cretido y confirmando
* la compra.
*
* Las ventas concretadas se almacenan en la base de datos.
*/

class Venta {
	// Un carrito cerrado. tiene adentro los juegos.
	Carrito carrito
	// total de la compra
	Double total
	// la fecha que se hizo la compra
	Date fecha
    // Codigo de la opreacion.
	Integer codigo
	static mapping = {
		version false
	}

	static constraints = {
		carrito nullable: false, unique: true               
        carrito unique: true               
        total nullable: false
        fecha nullable: false
	}
}
