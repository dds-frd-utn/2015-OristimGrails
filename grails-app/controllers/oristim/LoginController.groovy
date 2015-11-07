package oristim
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession
import session.SessionManager

class LoginController {
    
    def index() {

        // Capturo datos de post de formulario
        def username =  request.getParameter("username")
        def password = request.getParameter("password")
        
        // Traigo un usuario de la base de datos
        def user = Usuario.findByUsernameAndPassword( username , password )

        // Si el usuario existe, guardarlo en la sesion. Retornar el string Success
        if(user){
            def smgr = new SessionManager(request.session)
            smgr.crearSesion(user) 
            smgr.nuevoCarrito()
            render("Success")   
        }
        else{
            render("Fail")
        }

    }

    // Elimina la sesion actual.
    def logout() {
        def mySession = request.session
        def smgr = new SessionManager(mySession)
        smgr.eliminarSesion()
    }

    //Hay un usuario logeado?
    def isSessionActive(){
        def mySession = request.session
        def smgr = new SessionManager(mySession)

        // Retorna true o false como String
        render smgr.isActive()
    }

}
