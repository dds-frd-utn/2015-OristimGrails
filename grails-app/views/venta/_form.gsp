<%@ page import="oristim.*" %>
<%@ page import="session.*" %>

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
<g:render template="carritoDescripcion"/>
%{--<h3>Productos Elegidos:</h3>
 <p>----------------------------------------------------------------------</p>
<g:each var="juego" in="${j}">
    <p>${juego.nombre}  ----- ${juego.precio} $</p>
</g:each>
<p>----------------------------------------------------------------------</p>
<h3>Total ----- ${total} $ </h3> --}%
<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="venta.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${ventaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="venta.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${ventaInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'tarjeta', 'error')} required">
	<label for="tarjeta">
		<g:message code="venta.tarjeta.label" default="Tarjeta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tarjeta" required="" value="${ventaInstance?.tarjeta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'codigoseg', 'error')} required">
	<label for="codigoseg">
		<g:message code="venta.codigoseg.label" default="Codigoseg" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoseg" required="" value="${ventaInstance?.codigoseg}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'vencimiento', 'error')} required">
	<label for="vencimiento">
		<g:message code="venta.vencimiento.label" default="Vencimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="vencimiento" required="" value="${ventaInstance?.vencimiento}"/>

</div>

