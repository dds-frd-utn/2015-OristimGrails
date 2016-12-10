package oristim
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession
import session.SessionManager

 /**
* Se encarga de manejar todo el tema de la sesion
* en el sistema
*/

class LoginController {
    
     /**
    * Logea un usuario en sesion. Se debe pasar como parametro
    * el username y el password.
    * @url "login/"
    * @param username required String.
    * @param password required String.
    */

    def index() {

        // Capturo datos de post de formulario
        def username =  request.getParameter("username")
        def password = request.getParameter("password")
        
        // Traigo un usuario de la base de datos
        def user = Usuario.findByUsernameAndPassword( username , password )

        // Si el usuario existe, guardarlo en la sesion. Retornar el string Success
        if(user){
            // Creamos el carrito en la sesion.
            println("crear carrito")
            println(user.carritoTemp)
            /* Si el usuario no tiene un carrito temporal. Se lo setea.
            para que despues cuando quiera ocmprar algo, pueda agregar
            cosas.*/
            if(user.carritoTemp == null){
                user.carritoTemp = new CarritoTemp().save(flush:true)
                user.save(flush:true)
                println("El carrito fue creado")
            }
            // Session manager
            def smgr = new SessionManager(request.session)
            // logear usuario en sesion.
            smgr.crearSesion(user) 

            render("Success")   
        }
        else{
            render("Fail")
        }

    }


     /**
    * Elimina el usuario actual en sesion.
    * @url "login/logout"
    */

    def logout() {
        def mySession = request.session
        def smgr = new SessionManager(mySession)
        smgr.eliminarSesion()
    }


     /**
    * Determina si hay un usuario activo en sesion.
    * @url "login/isSessionActive/"
    */

    def isSessionActive(){
        def mySession = request.session
        // Captura el usuario en sesion
        def smgr = new SessionManager(mySession)

        // Retorna true o false como String dependiento si
        // esta logeado o no
        render smgr.isActive()
    }

}
