
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
		</div>
	</body>
</html>
