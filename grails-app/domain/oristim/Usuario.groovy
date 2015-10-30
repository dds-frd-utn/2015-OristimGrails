package oristim

class Usuario {

	String username
	String password
	String nombre
	String apellido
	String email

	static mapping = {
		//username column: "username", sqlType: "varchar", length: 46
		version false
	}

	static constraints = {
		username nullable: false, maxSize: 45, unique: true
		password nullable: false, maxSize: 45
		nombre nullable: false, maxSize: 45
		apellido nullable: false, maxSize: 45
		email nullable: false, maxSize: 45, unique: true
	}
}
