package oristim
import session.SessionManager
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession
/**
* Se encarga de filtrar los juegos acorde a diferentes criterios
* devuelve diferentes listas de juegos.
*/
class FilterJuegoController{
    
     /**
    * Devuelve una lista con todos los juegos en el sistema.
    * los renderiza en la pagina index.
    * @desc Url definida en URL mapings
    * @url "/"
    */

    def index() {
        // buscar todos los juegos
        def juegosList = Juego.findAll{}
        // renderizar la pagina.
        render(view:"/index", model:[juegosList:juegosList])
    }


    /**
    * Devuelve todos los juegos tal que juego.plataforma cumple con el criterio
    * ingresado.
    * los renderiza en la pagina index.
    * @desc Url definida en URL mapings
    * @url "/plataforma/$p"
    * @param p required String.
    */

    def byPlataforma(String p){
        
        // traer todos los juegos que cumplen con el
        // criterio pasado como parametro.
        def juegosList = Juego.findAll{
            plataforma == p
        }

        // renderizarlos en index.
        render(view:"/index", model:[
            juegosList:juegosList,
            plataforma:p
        ])
    }


     /**
    * Devuelve todos los juegos tal que juego.categoria cumple con el criterio
    * ingresado.
    * los renderiza en la pagina index.
    * @desc Url definida en URL mapings
    * @url "/categoria/$c"
    * @param c required String.
    */

    def byCategoria(String c){

        // Traer la lista de juegos
        def juegosList = Juego.findAll{
            categoria == c
        }

        println (juegosList)
        
        // Renderizar la pagina pasando los juegos.
        render(view:"/index", model:[
            juegosList:juegosList,
            plataforma:c
        ])
    }

}
