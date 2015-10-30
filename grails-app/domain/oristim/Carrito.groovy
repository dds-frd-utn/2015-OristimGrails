package oristim

class Carrito {

	Usuario usuario
    String estado
	static hasMany = [juegos: Juego]
	//static hasOne = [usuario:Usuario]
        
	static mapping = {
		version false
	}

	static constraints = {
                //usuario nullable: false
                estado maxSize: 1
	}
}
