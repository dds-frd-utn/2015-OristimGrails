package oristim
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpSession
import session.SessionManager;
import session.UserSession

class LoginController {

    def index() {

        def session = request.getSession()
        def s = new SessionManager( session )
        def u = new UserSession("diego")
        s.crearSesion(u)
        def mu = s.getCurentUsr()   
       
       render("Se ha credo un usuario de Username Diego")
  
        
    }
    
    def logearse(def username , def password){
        
    }
}
