package oristim

/**
* Clase que contiene juegos comprados
*/

class Carrito {

	// El carrito esta asociado a un usuario.
	Usuario usuario
	// El estado de un carrito puede ser P "pendiente" o F "finalizado".
    String estado = 'p'
    // Una lista de juegos agregados.
    List juegos = []
	static hasMany = [juegos: Juego]
	//static hasOne = [usuario:Usuario]
        
	static mapping = {
		version false
	}

	static constraints = {
                //usuario nullable: false
                estado maxSize: 1
	}

	def setUsuario(Usuario u){
		this.usuario = u
	}
	def setEstado(String e){
		this.estado = e
	}

	Usuario getUsuario(){
		return this.usuario
	}

	String getEstado(){
		return this.estado
	}
        
 
}
