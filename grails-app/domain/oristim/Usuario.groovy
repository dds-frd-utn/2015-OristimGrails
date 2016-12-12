package oristim

/**
* El usuario identifica a una persona.
* a un cliente ...
*/

class Usuario {
	// nombre con el que se logea
	String username
	// contraseña
	String password
	// nombre del chabon
	String nombre
	// apellido
	String apellido
	// el email. No se usa nunca ...
	String email
	// El carrito temporal.
	CarritoTemp carritoTemp

	static mapping = {
		//username column: "username", sqlType: "varchar", length: 46
		// version false
	}

	static constraints = {
		username nullable: false, unique: true, matches: "[a-zA-Z-0-1]+"
		carritoTemp nullable: true
		password nullable: false, blank:false
		nombre nullable: false, blank:false, matches: "[a-zA-Z]+"
		apellido nullable: false, blank:false, matches: "[a-zA-Z]+"
		email email:true, nullable: false, unique: true, blank:false

	}

	// Defino los seters y los geters solo porque la clase Session Manager los necesita.
	String getUsername(){
		return username
	}
	String getPassword(){
		return password
	}
	String getNombre(){
		return nombre
	}
	String getApellido(){
		return apellido
	}
	String getEmail(){
		return email
	}

	String setUsername(String s){
		username = s
	}
	String setPassword(String s){
		password = s
	}
	String setNombre(String s){
		nombre = s
	}
	String setApellido(String s){
		apellido = s
	}
	String setEmail(String s){
		email = s
	}


}
