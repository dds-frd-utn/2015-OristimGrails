import oristim.*
import security.*
import session.*
import carrito.*

class BootStrap {

    def init = { servletContext ->
    	new Usuario(
    		username: 'mrios'
			,password: 'mrios1'
			,nombre: 'Matias'
			,apellido: 'Rios'
			,email: 'mrios1@gmail.com'
    	).save(flush:true)
    	new Usuario(
    		username: 'dcol'
			,password: 'dcol1'
			,nombre: 'Diego'
			,apellido: 'Colussi'
			,email: 'Hola'
    	).save(flush:true)
    	new Juego(
    		alias: 'COD'
			,categoria: 'FPS'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Call of duty 4'
			,plataforma: 'PC'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'WOW'
			,categoria: 'FPS'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Wolrld of warcraft'
			,plataforma: 'PC'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'ASC'
			,categoria: 'FPS'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Assasins Creed 4'
			,plataforma: 'PC'
			,precio: 500
    	).save()
    }
    def destroy = {
    }
}
