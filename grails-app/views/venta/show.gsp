
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
				%{-- <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li> --}%
			</ul>
		</div>
		<div id="show-venta" class="content scaffold-show" role="main">
			<h1>Detalle de Compra</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list venta">
				
				%{-- <g:if test="${ventaInstance?.carrito}">
				<li class="fieldcontain">
					<span id="carrito-label" class="property-label"><g:message code="venta.carrito.label" default="Carrito" /></span>
					
						<span class="property-value" aria-labelledby="carrito-label"><g:link controller="carrito" action="show" id="${ventaInstance?.carrito?.id}">${ventaInstance?.carrito?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if> --}%
			
				%{-- <g:if test="${ventaInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="venta.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${ventaInstance}" field="total"/></span>
					
				</li>
				</g:if> --}%
			
				<g:if test="${ventaInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="venta.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${ventaInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ventaInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="venta.apellido.label" default="Nombre y Apellido del Titular" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${ventaInstance}" field="nombre"/> <g:fieldValue bean="${ventaInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ventaInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="venta.codigo.label" default="Codigo de Operacion" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${ventaInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				%{-- <g:if test="${ventaInstance?.codigoseg}">
				<li class="fieldcontain">
					<span id="codigoseg-label" class="property-label"><g:message code="venta.codigoseg.label" default="Codigoseg" /></span>
					
						<span class="property-value" aria-labelledby="codigoseg-label"><g:fieldValue bean="${ventaInstance}" field="codigoseg"/></span>
					
				</li>
				</g:if> --}%
			
				%{-- <g:if test="${ventaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="venta.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${ventaInstance}" field="nombre"/></span>
					
				</li>
				</g:if> --}%
			
				<g:if test="${ventaInstance?.tarjeta}">
				<li class="fieldcontain">
					<span id="tarjeta-label" class="property-label"><g:message code="venta.tarjeta.label" default="Numero de Tarjeta" /></span>
					
						<span class="property-value" aria-labelledby="tarjeta-label"><g:fieldValue bean="${ventaInstance}" field="tarjeta"/></span>
					
				</li>
				</g:if>
				<h1>Productos Comprados</h1>
				%{-- ${ventaInstance?.carrito.juegos} --}%
				<g:each in="${ventaInstance?.carrito.juegos}" var="juego">
					<li class="fieldcontain">
						<span id="nombre-label" class="property-label">
							${juego.nombre}
						</span>
						<span class="property-value" aria-labelledby="nombre-label">
							${juego.precio} $
						</span>
					</li>
				</g:each>
					<li class="fieldcontain">
						<span id="nombre-label" class="property-label">
							Total
						</span>
						<span class="property-value" aria-labelledby="nombre-label">
							${ventaInstance?.carrito.juegos.sum{it.precio}} $
						</span>
					</li>
				%{-- <g:if test="${ventaInstance?.vencimiento}">
				<li class="fieldcontain">
					<span id="vencimiento-label" class="property-label"><g:message code="venta.vencimiento.label" default="Vencimiento" /></span>
					
						<span class="property-value" aria-labelledby="vencimiento-label"><g:fieldValue bean="${ventaInstance}" field="vencimiento"/></span>
					
				</li>
				</g:if> --}%
			
			</ol>
			%{-- <g:form url="[resource:ventaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${ventaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form> --}%
		</div>
	</body>
</html>
