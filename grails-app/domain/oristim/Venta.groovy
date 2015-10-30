package oristim

class Venta {

	Carrito carrito
	Double total
	Date fecha
    //static hasOne = [carrito:Carrito]
        
	static mapping = {
		version false
	}

	static constraints = {
		carrito nullable: false, unique: true               
        carrito unique: true               
        total nullable: false
        fecha nullable: false
	}
}
