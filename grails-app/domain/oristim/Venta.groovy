package oristim

class Venta {

	Carrito carrito
	Double total
	Date fecha
        
	static mapping = {
		id column: "id"
		version false
	}

	static constraints = {
		carrito nullable: false, unique: true               
                total nullable: false
                fecha nullable: false
	}
}
