package oristim

class Carrito {

	Usuario usuario
        List juegos
        Character estado
	
	static hasMany = [juegos: Juego]
	static belongsTo = [Usuario]
        
	static mapping = {
		version false
	}

	static constraints = {
                usuario nullable: false
	}
}
