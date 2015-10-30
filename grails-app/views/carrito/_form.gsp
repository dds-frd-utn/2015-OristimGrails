<%@ page import="oristim.Carrito" %>



<div class="fieldcontain ${hasErrors(bean: carritoInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="carrito.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" maxlength="1" required="" value="${carritoInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carritoInstance, field: 'juegos', 'error')} ">
	<label for="juegos">
		<g:message code="carrito.juegos.label" default="Juegos" />
		
	</label>
	<g:select name="juegos" from="${oristim.Juego.list()}" multiple="multiple" optionKey="id" size="5" value="${carritoInstance?.juegos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carritoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="carrito.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${oristim.Usuario.list()}" optionKey="id" required="" value="${carritoInstance?.usuario?.id}" class="many-to-one"/>

</div>

