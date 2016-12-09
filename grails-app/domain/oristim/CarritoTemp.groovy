package oristim

class CarritoTemp {
	 
    List juegos = []
	
	static hasMany = [juegos: Juego]
        
	static mapping = {
	}

	static constraints = {
		juegos nullable: true
    }

}
