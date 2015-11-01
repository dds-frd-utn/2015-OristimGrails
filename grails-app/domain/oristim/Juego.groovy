package oristim

class Juego {

	String alias
	String categoria
	String descripcion
	String imgroute = "img/imgDfl.jpg"
	String informacion
	String nombre
	String plataforma
	Double precio
    
	static mapping = {
		version false
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
