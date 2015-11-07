package oristim

class Carrito {

	public Usuario usuario
    public String estado
	public static hasMany = [juegos: Juego]
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
