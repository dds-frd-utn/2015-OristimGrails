<%@ page import="session.SessionManager" %>
<li>
	<a class="dropdown-button" href="#!" data-activates="usuario">
		<%if(u){
			out.println( u.getNombre()+" "+u.getApellido() )
		}
		else{
			out.println("Login")
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
  		<li><a id="loginLink" class="modal-trigger" href="#login">Iniciar Sesion</a></li>  		
  	<%}%>
</ul>

<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript">	
	$( "#logoutUser" ).click(function() {
        $.post( "login/logout" );
        window.location.reload();	          
  	});
</script>