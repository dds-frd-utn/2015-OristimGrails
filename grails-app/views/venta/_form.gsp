<%@ page import="oristim.*" %>
<%@ page import="session.*" %>

<%
def smgr = new SessionManager(request.session)
// Traemos el usuario de la sesion.
def u = smgr.getCurrentUsr()
def usuario = Usuario.get(u.id)
def c2 = usuario.carritoTemp
//traigo los juegos en el carrito.
def j = c2.juegos
def total = j.sum{it.precio}
%>
<g:render template="carritoDescripcion"/>
<h1>Formulario de Pago</h1>
<img src="/img/tcredito.png" width="30%" style="margin-left:26%">
<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		Nombre del Titular
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${ventaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		Apellido del Titular
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${ventaInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'tarjeta', 'error')} required">
	<label for="tarjeta">
		Número de Tarjeta
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tarjeta" required="" value="${ventaInstance?.tarjeta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'codigoseg', 'error')} required">
	<label for="codigoseg">
		Código de Seguridad
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoseg" required="" value="${ventaInstance?.codigoseg}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'vencimiento', 'error')} required">
	<label for="vencimiento">
		Fecha de Vencimiento
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="vencimiento" required="" value="${ventaInstance?.vencimiento}"/>

</div>

