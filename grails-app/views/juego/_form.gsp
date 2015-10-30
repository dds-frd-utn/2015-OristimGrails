<%@ page import="oristim.Juego" %>



<div class="fieldcontain ${hasErrors(bean: juegoInstance, field: 'alias', 'error')} ">
	<label for="alias">
		<g:message code="juego.alias.label" default="Alias" />
		
	</label>
	<g:textField name="alias" maxlength="45" value="${juegoInstance?.alias}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: juegoInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="juego.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="categoria" maxlength="45" required="" value="${juegoInstance?.categoria}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: juegoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="juego.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${juegoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: juegoInstance, field: 'imgroute', 'error')} ">
	<label for="imgroute">
		<g:message code="juego.imgroute.label" default="Imgroute" />
		
	</label>
	<g:textField name="imgroute" maxlength="45" value="${juegoInstance?.imgroute}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: juegoInstance, field: 'informacion', 'error')} ">
	<label for="informacion">
		<g:message code="juego.informacion.label" default="Informacion" />
		
	</label>
	<g:textField name="informacion" value="${juegoInstance?.informacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: juegoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="juego.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="45" required="" value="${juegoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: juegoInstance, field: 'plataforma', 'error')} required">
	<label for="plataforma">
		<g:message code="juego.plataforma.label" default="Plataforma" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="plataforma" maxlength="45" required="" value="${juegoInstance?.plataforma}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: juegoInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="juego.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" value="${fieldValue(bean: juegoInstance, field: 'precio')}" required=""/>

</div>

