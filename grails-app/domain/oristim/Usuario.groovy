package oristim

class Usuario {
	String username
	String password
	String nombre
	String apellido
	String email
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
