import oristim.*
import security.*
import session.*
import carrito.*

class BootStrap {

    def init = { servletContext ->
    	new Usuario(
    		username: 'usuario'
			,password: 'usuario'
			,nombre: 'Usuario'
			,apellido: 'Casual'
			,email: 'finaldediseño@hotmail.com'
    	).save(flush:true)
    	new Juego(
    		alias: 'COD'
			,categoria: 'FPS'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://vignette2.wikia.nocookie.net/callofduty/images/7/76/Game_cover_art_BOIII.jpg/revision/latest?cb=20160211194000"
			,informacion: "Informacion no cargada."
			,nombre: 'Black OPS 3'
			,plataforma: 'Windows'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'UNC'
			,categoria: 'FPS'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: ""
			,informacion: "Informacion no cargada."
			,nombre: 'Uncharted 4'
			,plataforma: 'Play Station 4'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'WOW'
			,categoria: 'Rol'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://warcraft-5ddd.kxcdn.com/wp-content/uploads/2015/08/wow-legion-box-art-2.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'WoW Legion'
			,plataforma: 'Windows'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'ASC'
			,categoria: 'Aventuras'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://ecx.images-amazon.com/images/I/81MiS09nFPL._SL1500_.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Assasins Creed 4'
			,plataforma: 'Xbox'
			,precio: 500
    	).save()
    	new Juego(
    		alias: 'pd2'
			,categoria: 'FPS'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://www.3djuegos.com/juegos/8743/payday_the_heist_2/fotos/ficha/payday_the_heist_2-2256705.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Payday II'
			,plataforma: 'Windows'
			,precio: 200
    	).save()
    	new Juego(
    		alias: 'fc4'
			,categoria: 'Simulador'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://img.gamefaqs.net/box/1/0/4/531104_front.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'Farming Simulator 15'
			,plataforma: 'Windows'
			,precio: 200
    	).save()
    	new Juego(
    		alias: 'eso'
			,categoria: 'Rol'
			,descripcion: "Descripcion del nuevo Juego."
			,imgroute: "http://www.gamedynamo.es/images/games/boxart/high/2544.jpg"
			,informacion: "Informacion no cargada."
			,nombre: 'The Elder Scrolls Online'
			,plataforma: 'Windows'
			,precio: 200
    	).save()
    }
    def destroy = {
    }
}
