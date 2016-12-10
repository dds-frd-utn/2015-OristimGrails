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
			,categoria: 'fps'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Call of duty 4'
			,plataforma: 'windows'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'WOW'
			,categoria: 'rpg'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Wolrld of warcraft'
			,plataforma: 'windows'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'ASC'
			,categoria: 'estrategia'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Assasins Creed 4'
			,plataforma: 'xbox'
			,precio: 500
    	).save()
    	new Juego(
    		alias: '1'
			,categoria: 'fps'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Juego 1'
			,plataforma: 'windows'
			,precio: 200
    	).save()
    	new Juego(
    		alias: '2'
			,categoria: 'fps'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Juego 2'
			,plataforma: 'windows'
			,precio: 200
    	).save()
    	new Juego(
    		alias: '3'
			,categoria: 'fps'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Juego 3'
			,plataforma: 'windows'
			,precio: 200
    	).save()
    	new Juego(
    		alias: '4'
			,categoria: 'fps'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Juego 4'
			,plataforma: 'windows'
			,precio: 200
    	).save()
    	new Juego(
    		alias: '5'
			,categoria: 'fps'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Juego 5'
			,plataforma: 'windows'
			,precio: 200
    	).save()
    	new Juego(
    		alias: '6'
			,categoria: 'fps'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "img/imgDfl.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Juego 6'
			,plataforma: 'windows'
			,precio: 200
    	).save()
    }
    def destroy = {
    }
}
