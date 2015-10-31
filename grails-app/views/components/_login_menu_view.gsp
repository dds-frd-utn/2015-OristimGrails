<%@ page import="session.SessionManager" %>
<% 
	// Usuario actualmente en sesion.
    def smgr = new SessionManager(session);
    def u = smgr.getCurrentUsr();
    // if(u)
    //     out.println("Usuario Logeado <"+u.getNombre()+u.getApellido()+"> Esto va a estar hasta cerrar navegador");
%>

<li>
	<a class="dropdown-button" href="#!" data-activates="usuario">
		<%if(u){
			out.println( u.getNombre()+" "+u.getApellido() )
		}
		else{
			out.println("Usuario")
		}%>
		<i class="material-icons right">arrow_drop_down</i>
	</a>
</li>

<!-- Dropdown Usuario (Cerrar Sesion, Iniciar Sesion) -->
<ul id="usuario" class="dropdown-content">
	<%if(u){%>
		<li><a id="logoutUser" href="#!">Cerrar Sesion</a></li>
  	<%
  	}else{%>
  		<li><a class="modal-trigger" href="#login">Iniciar Sesion</a></li>  		
  	<%}%>
</ul>

<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript">	
	$( "#logoutUser" ).click(function() {
        $.post( "login/logout" );
        window.location.reload();	          
  	});
</script>