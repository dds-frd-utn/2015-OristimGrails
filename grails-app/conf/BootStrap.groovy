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
			,imgroute: "http://vignette2.wikia.nocookie.net/callofduty/images/7/76/Game_cover_art_BOIII.jpg/revision/latest?cb=20160211194000"
			,informacion: "Informacion no cargada."
			,nombre: 'Black OPS 3'
			,plataforma: 'windows'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'WOW'
			,categoria: 'rpg'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://warcraft-5ddd.kxcdn.com/wp-content/uploads/2015/08/wow-legion-box-art-2.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'WoW Legion'
			,plataforma: 'windows'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'ASC'
			,categoria: 'estrategia'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://ecx.images-amazon.com/images/I/81MiS09nFPL._SL1500_.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Assasins Creed 4'
			,plataforma: 'xbox'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'pd2'
			,categoria: 'fps'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://www.3djuegos.com/juegos/8743/payday_the_heist_2/fotos/ficha/payday_the_heist_2-2256705.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Payday II'
			,plataforma: 'windows'
			,precio: 200
    	).save()
    	new Juego(
    		alias: 'fc4'
			,categoria: 'fps'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://img.gamefaqs.net/box/1/0/4/531104_front.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Farming Simulator 15'
			,plataforma: 'windows'
			,precio: 200
    	).save()
    	new Juego(
    		alias: 'eso'
			,categoria: 'fps'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://www.gamedynamo.es/images/games/boxart/high/2544.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'The Elder Scrolls Online'
			,plataforma: 'windows'
			,precio: 200
    	).save()
    }
    def destroy = {
    }
}
