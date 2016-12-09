package oristim
import session.SessionManager
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession
import org.hibernate.*

class AgregarJuegoController {

    def index(Integer idJuego) { 
    	// Pasar parametro id de un juego
        def j = Juego.get(idJuego)
        println("el id seteado es"+idJuego)
        println(j.nombre);
        // try {
            
            def smgr = new SessionManager(request.session)

            // def c = smgr.getCurrentCart()

            def u = smgr.getCurrentUsr()
            // Traemos el usuario posta
            def usuario = Usuario.get(u.id)
            // traemos el carrito temporal.
            def c2 = usuario.carritoTemp

            println(usuario.nombre)

            println("Juego ${j}")
            

            println(j in c2.juegos)

            if(!(j in c2.juegos)){
                // Agregamos el juego al carrito
                c2.juegos.push(j) 
                
                // Guardamos el carrito tempoal
                c2.save(flush:true)
                
                // Guardamos el usuario.
                usuario.save(flush:true)
            }else{
                // Para abortar ejecucion, dividimos por cero.
                0/0
            }


            render "success"
        // }
        // catch(Exception e){
            println("Error. No se pudo agregar juego")
        // }
        
    }

    def getCarritoJuegos(){
        
        def smgr = new SessionManager(request.session)
        
        def u = smgr.getCurrentUsr()
        def c = Usuario.get(u.id).carritoTemp

        println "Mostrar Carrito:"
        println (c)
        // c.juegos.each{
        //     println "Nombre: ${it.nombre}"
        // } 

        render(contentType: 'text/json'){
            c.juegos
        }
       // [juegosCarrito:c.juegos]
         
    }

    // Basicamente, tipo.. o sea.. suponete, ponele.... borramos un juego
    def eliminarElemento(Integer id){
       def smgr = new SessionManager(request.session) 
       def uid =  smgr.getCurrentUsr().id
       def c = Usuario.get(uid).carritoTemp

       c.juegos.removeAll{ juego->
            juego.id == id
       }

       c.save(flush:true)

       println c.juegos

       render "success"
    }

    def guardarCarrito(){
        
        def smgr = new SessionManager(request.session) 
        def c = smgr.getCurrentCart()
        
        println("carrito para guardar")
        println(c)
        c.save(flush: true , failOnError: true)

        render "hola"
        
        
    }

}
