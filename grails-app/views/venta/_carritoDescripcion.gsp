<%@ page import="oristim.*" %>
<%@ page import="session.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Confirmar compra</title>

  
  <g:javascript src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"/>
  
  <g:javascript>
  $(function () {
    /* BOOTSNIPP FULLSCREEN FIX */
    if (window.location == window.parent.location) {
        $('#back-to-bootsnipp').removeClass('hide');
        $('.alert').addClass('hide');
    } 
    
    $('#fullscreen').on('click', function(event) {
        event.preventDefault();
        window.parent.location = "http://bootsnipp.com/iframe/Q60Oj";
    });
    
    $('tbody > tr').on('click', function(event) {
        event.preventDefault();
        $('#myModal').modal('show');
    })
    
    $('.btn-mais-info').on('click', function(event) {
        $( '.open_info' ).toggleClass( "hide" );
    })
    
     
});
</g:javascript>
<style type="text/css">
   @import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);

tbody > tr {
    cursor: pointer;
}

.result{
    margin-top:20px;
}
 </style>
</head>
<body>
<div class="container">

            
    <h1> <i class="fa fa-shopping-cart"></i> Productos <small> - detalle</small> </h1>        
    <hr>   
    <table class="table table-hover">
      <thead>
        <tr>
          <th>Id</th>
          <th>Código</th>
          <th>Nombre</th>
          <th>Plataforma</th>
          <th>Precio</th>
        </tr>
      </thead>
      <tbody>
        <%
          def smgr = new SessionManager(request.session)
          // Traemos el usuario de la sesion.
          def u = smgr.getCurrentUsr()
          // Como a veces tiene errores, lo buscamos
          // En la base de datos. jeje.
          def usuario = Usuario.get(u.id)
          def c2 = usuario.carritoTemp
          //traigo los juegos en el carrito.
          def j = c2.juegos
          def total = j.sum{it.precio}
        %>
      <g:each var="juego" in="${j}">
        <tr>
          <td>${juego.id}</td>
          <td>${juego.alias}</td>
          <td>${juego.nombre}
          <td>${juego.plataforma}</td>
          <td>${juego.precio}</td>
        </tr>
      </g:each>
      </tbody>
      </table>
      <table class="table table-hover">
      <thead>
        <tr>
          <th></th>
          <th></th>
          <th></th>
          <th>Total:</th>
          <th>${total}</th>
        </tr>
      </thead>
      </table>
      
    
    
   
        
</div>

</body>
</html>



 
    
    
    
    
    
    
    