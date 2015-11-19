package oristim
import session.SessionManager
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession

class FilterJuegoController{
    
    // Devuelve todos los juegos, y los carga en la vista index.
    def index() {

        def juegosList = Juego.findAll{}
        
        render(view:"/index", model:[juegosList:juegosList])
    }

    // Devuelve todos los juegos filtrados por plataforma.
    def byPlataforma(String p){
        
        def juegosList = Juego.findAll{
            plataforma == p
        }

        render(view:"/index", model:[
            juegosList:juegosList,
            plataforma:p
        ])
    }

    def byCategoria(String c){

        def juegosList = Juego.findAll{
            categoria == c
        }

        println (juegosList)
        
        render(view:"/index", model:[
            juegosList:juegosList,
            plataforma:c
        ])
    }

}
