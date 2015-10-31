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
