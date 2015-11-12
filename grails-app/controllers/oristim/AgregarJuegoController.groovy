package oristim
import session.SessionManager
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession

class AgregarJuegoController {

    def index() { 
    
        def juego = Juego.findById(//va un parametro)
        def smgr = new SessionManager(request.session)
        def c = smgr.getCurrentCart()
        c.addJuego(juego)
        c.juegos.each{
            println "Nombre: ${it.nombre}"
        }
    }
}
