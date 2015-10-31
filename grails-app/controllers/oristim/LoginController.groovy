package oristim
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession
import session.SessionManager
import session.UserSession

class LoginController {
    
    def index() {

        // Capturo datos de post de formulario
        def username =  request.getParameter("username")
        def password = request.getParameter("password")
        
        // Traigo un usuario de la base de datos
        def user = Usuario.findByUsernameAndPassword( username , password )

        // Si el usuario existe, guardarlo en la sesion. Retornar el string Success
        if(user){
            def mySession = request.session
            def smgr = new SessionManager(mySession)
            smgr.crearSesion(user) 
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

}
