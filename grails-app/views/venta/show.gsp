
<%@ page import="oristim.Venta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'venta.label', default: 'Venta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-venta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-venta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list venta">
			
				<g:if test="${ventaInstance?.carrito}">
				<li class="fieldcontain">
					<span id="carrito-label" class="property-label"><g:message code="venta.carrito.label" default="Carrito" /></span>
					
						<span class="property-value" aria-labelledby="carrito-label"><g:link controller="carrito" action="show" id="${ventaInstance?.carrito?.id}">${ventaInstance?.carrito?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ventaInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="venta.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${ventaInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ventaInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="venta.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${ventaInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:ventaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${ventaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
