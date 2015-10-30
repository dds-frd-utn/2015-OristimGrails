
<%@ page import="oristim.Juego" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'juego.label', default: 'Juego')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-juego" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-juego" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list juego">
			
				<g:if test="${juegoInstance?.alias}">
				<li class="fieldcontain">
					<span id="alias-label" class="property-label"><g:message code="juego.alias.label" default="Alias" /></span>
					
						<span class="property-value" aria-labelledby="alias-label"><g:fieldValue bean="${juegoInstance}" field="alias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${juegoInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="juego.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${juegoInstance}" field="categoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${juegoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="juego.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${juegoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${juegoInstance?.imgroute}">
				<li class="fieldcontain">
					<span id="imgroute-label" class="property-label"><g:message code="juego.imgroute.label" default="Imgroute" /></span>
					
						<span class="property-value" aria-labelledby="imgroute-label"><g:fieldValue bean="${juegoInstance}" field="imgroute"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${juegoInstance?.informacion}">
				<li class="fieldcontain">
					<span id="informacion-label" class="property-label"><g:message code="juego.informacion.label" default="Informacion" /></span>
					
						<span class="property-value" aria-labelledby="informacion-label"><g:fieldValue bean="${juegoInstance}" field="informacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${juegoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="juego.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${juegoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${juegoInstance?.plataforma}">
				<li class="fieldcontain">
					<span id="plataforma-label" class="property-label"><g:message code="juego.plataforma.label" default="Plataforma" /></span>
					
						<span class="property-value" aria-labelledby="plataforma-label"><g:fieldValue bean="${juegoInstance}" field="plataforma"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${juegoInstance?.precio}">
				<li class="fieldcontain">
					<span id="precio-label" class="property-label"><g:message code="juego.precio.label" default="Precio" /></span>
					
						<span class="property-value" aria-labelledby="precio-label"><g:fieldValue bean="${juegoInstance}" field="precio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:juegoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${juegoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
