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
	// Tarjeta
	String tarjeta
	// Código de seguridad
	String codigoseg
	//Nombre
	String nombre
	//Apellido
	String apellido
	//Vencimiento
	String vencimiento
	// Usuario que efectuo la compra
	Usuario usuario

	static mapping = {
	}

	static constraints = {
		carrito nullable: true              
        total nullable: false
        fecha nullable: true
	}
}
