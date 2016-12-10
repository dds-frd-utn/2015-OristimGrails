package oristim

/**
* El juego en si. Es la mercancia que se comercializa.
*/

class Juego {

	// Nombre corto para el juego
	String alias
	// Categoria. FPS, RPG etc
	String categoria
	// Descripcion del juego.
	String descripcion 	= "Descripcion no cargada."
	// una imagen.
	String imgroute 	= "img/imgDfl.jpg"
	// La informacion piola. cuanto consume, etc.
	String informacion 	= "Informacion no cargada."
	// el nombre oficial del juego
	String nombre
	// la plataforma. PC XBOX etc.
	String plataforma
	// el precio
	Double precio
    
	static mapping = {
		// version false
	}

	static constraints = {
		alias nullable: true, maxSize: 45, unique: true
		categoria nullable: false, maxSize: 45
		descripcion nullable: true
		imgroute nullable: true, maxSize: 45
		informacion nullable: true
		nombre nullable: false, maxSize: 45, unique: true
		plataforma nullable: false, maxSize: 45
	}
}
