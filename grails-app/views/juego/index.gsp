
<%@ page import="oristim.Juego" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'juego.label', default: 'Juego')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-juego" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-juego" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="alias" title="${message(code: 'juego.alias.label', default: 'Alias')}" />
					
						<g:sortableColumn property="categoria" title="${message(code: 'juego.categoria.label', default: 'Categoria')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'juego.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="imgroute" title="${message(code: 'juego.imgroute.label', default: 'Imgroute')}" />
					
						<g:sortableColumn property="informacion" title="${message(code: 'juego.informacion.label', default: 'Informacion')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'juego.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${juegoInstanceList}" status="i" var="juegoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${juegoInstance.id}">${fieldValue(bean: juegoInstance, field: "alias")}</g:link></td>
					
						<td>${fieldValue(bean: juegoInstance, field: "categoria")}</td>
					
						<td>${fieldValue(bean: juegoInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: juegoInstance, field: "imgroute")}</td>
					
						<td>${fieldValue(bean: juegoInstance, field: "informacion")}</td>
					
						<td>${fieldValue(bean: juegoInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${juegoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
