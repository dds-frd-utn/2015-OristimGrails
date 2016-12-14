package oristim

/**
* Clase que contiene juegos que el usuario quiere
* comprar pero todavia no lo hizo. Los puede agregar
* o eliminar.
* @attr juegos Tiene una lista de juegos
*/

class CarritoTemp {
	
    List juegos = []

	static hasMany = [juegos: Juego]

	static mapping = {
		
	}

	static constraints = {
		juegos nullable: true
    }

}
