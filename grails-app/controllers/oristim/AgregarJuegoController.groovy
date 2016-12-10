package oristim
import session.SessionManager
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession
import org.hibernate.*
/**
* Maneja toda la cuestion de agregar Juegos
* al carrito del usuario.
*/
class AgregarJuegoController {

    /**
    * Agrega un juego al carrito temporal del usuario.
    * Un usuario solo tiene un carrito temporal en un
    * momento dado. Dura indefinidamente.
    * @desc Url definida en URL mapings
    * @url /agregar/$idJuego. Ej /agregar/2
    * @param idJuego required Integer GET.
    */
    def index(Integer idJuego) { 
    	
        // Se captura el juego de la DB.
        def j = Juego.get(idJuego)
        println("el id seteado es"+idJuego)
        println(j.nombre);
        
        try {
            
            // Session manager
            def smgr = new SessionManager(request.session)
            // Traemos el usuario de la sesion.
            def u = smgr.getCurrentUsr()
            // Como a veces tiene errores, lo buscamos
            // En la base de datos. jeje.
            def usuario = Usuario.get(u.id)
            // traemos el carrito temporal del usuario.
            def c2 = usuario.carritoTemp

            println(usuario.nombre)
            println("Juego ${j}")
            println(j in c2.juegos)

            // Si el juego no estaba agregado ya...
            if(!(j in c2.juegos)){
                // Agregamos el juego al carrito
                c2.juegos.push(j) 
                // Guardamos el carrito tempoal
                c2.save(flush:true)
                // Guardamos el usuario.
                usuario.save(flush:true)
            }else{
                // Si no... hacemos la gran 100tifiko...
                0/0
            }

            // Renderiza que todo funciono bien.
            render "success"
        }
        catch(Exception e){
            println("Error. No se pudo agregar juego")
        }
        
    }

    /**
    * Devuelve el carrito temporal del usuario.
    * @desc Url definida en URL mapings
    * @url /carrito.
    */
    def getCarritoJuegos(){
        
        // Sesion manager
        def smgr = new SessionManager(request.session)
        // Traemos el usuario actual
        def u = smgr.getCurrentUsr()
        // Traemos el carrito temporal del usuario.
        def c = Usuario.get(u.id).carritoTemp

        // mostrar cosas
        println "Mostrar Carrito:"
        println (c)

        // Se rendriza un json con los juegos del
        // carrito actual.
        render(contentType: 'text/json'){
            c.juegos
        }         
    }

    /**
    * Elimina un juego del carrito pasando como parametro el id del juego.
    * @desc Url definida en URL mapings
    * @url /borrar/$id. ej /borrar/1
    * @param id required Intege. GET
    */
    def eliminarElemento(Integer id){
       // traemos sesion manager
       def smgr = new SessionManager(request.session) 
       // usuario id
       def uid =  smgr.getCurrentUsr().id
       // traer el carrito temporal del usuario.
       def c = Usuario.get(uid).carritoTemp

       // Se borran todos los juegos en el carrito temporal
       // que coincidan con el id del juego pasado como param.
       c.juegos.removeAll{ juego->
            juego.id == id
       }

       // guardas el carrito
       c.save(flush:true)

       println c.juegos

       // Decis que todo fuciono bien.
       def total = c.juegos.sum{it.precio}
       // render "success"
       render(contentType: 'text/json'){[
            result: 'success'
            ,total: total
        ]}    
    }

    /**
    * Pasa el carrito de sesion a la base de datos.
    * persistencia.
    * @desc Url definida en URL mapings
    * @url /guardar/
    */
    def guardarCarrito(){
        
        // Sesion manager
        def smgr = new SessionManager(request.session) 
        // traer carrito actual de sesion
        def c = smgr.getCurrentCart()
        
        println("carrito para guardar")
        println(c)
        // guardar la movida
        c.save(flush: true , failOnError: true)
        // devolver algo...
        render "hola"
        
        
    }


     /**
    * Elimina el carrito actual del usuario.
    * Lo borra de la base de datos
    * @desc Url definida en URL mapings
    * @url /agregarJuego/eliminarCarrito
    */

    def eliminarCarrito(){
        // Sesion manager
        def smgr = new SessionManager(request.session) 
        // usuario en sesion
        def u = Usuario.get(smgr.getCurrentUsr().id)
        // carrito temporal del usuario.
        def c = u.carritoTemp

        u.carritoTemp.delete()
        u.save(flush:true)
        
        u.carritoTemp = new CarritoTemp().save(flush:true)
        u.save(flush:true)

    }

}
