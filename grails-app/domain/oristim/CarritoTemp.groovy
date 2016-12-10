package oristim

/**
* Clase que contiene juegos que el usuario quiere
* comprar pero todavia no lo hizo. Los puede agregar
* o eliminar.
* @attr juegos Tiene una lista de juegos
*/

class CarritoTemp {
	
	/** Basicamente una lista de juegos */
    List juegos = []
	/** la lista tiene muchos juegos */
	static hasMany = [juegos: Juego]
    /** Basicamente una lista de juegos */
	static mapping = {
	}
	/** Basicamente una lista de juegos */
	static constraints = {
		juegos nullable: true
    }

}
