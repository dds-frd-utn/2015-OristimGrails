package oristim
import session.SessionManager
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession

class AgregarJuegoController {

    def index(Integer idJuego) { 
    	
    	// Pasar parametro id de un juego
        def juego = Juego.findById(idJuego)
        println("el id seteado es"+idJuego)
        println(juego.nombre);
        try {
            def smgr = new SessionManager(request.session)

            def c = smgr.getCurrentCart()

            c.addJuego(juego)

            // c.juegos.each{
            //     println "Nombre: ${it.nombre}"
            // }  
            render "success"
        }
        catch(Exception e){
            println("Error. No se pudo agregar juego")
        }
        
    }

    def getCarritoJuegos(){
        
        def smgr = new SessionManager(request.session)
        
        def c = smgr.getCurrentCart()

        println "Mostrar Carrito:"
        // c.juegos.each{
        //     println "Nombre: ${it.nombre}"
        // } 

        render(contentType: 'text/json'){
            c.juegos
        }
       // [juegosCarrito:c.juegos]
         
    }
}
