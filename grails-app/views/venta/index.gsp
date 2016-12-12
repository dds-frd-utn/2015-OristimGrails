
<%@ page import="oristim.*" %>
<%@ page import="session.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'venta.label', default: 'Venta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-venta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create">Nueva Compra</g:link></li>
			</ul>
		</div>
		<div id="list-venta" class="content scaffold-list" role="main">
			<h1>Mis Compras</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						
						<g:sortableColumn property="codigo" title="${message(code: 'venta.codigo.label', default: 'Codigo de Operacion')}" />

						<th><g:message code="venta.carrito.label" default="Carrito" /></th>
					

					
						<g:sortableColumn property="fecha" title="${message(code: 'venta.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'venta.apellido.label', default: 'Titular de Tarjeta')}" />
					
						
						
						<g:sortableColumn property="total" title="${message(code: 'venta.total.label', default: 'Total')}" />

						%{-- <g:sortableColumn property="codigoseg" title="${message(code: 'venta.codigoseg.label', default: 'Codigoseg')}" /> --}%
					
					</tr>
				</thead>
				<tbody>
				
				%{-- Vamos a traer la movida del usuario actual en sesion --}%
				<% 
			          def smgr = new SessionManager(request.session)
			          // Traemos el usuario de la sesion.
			          def u = smgr.getCurrentUsr()
			          // Como a veces tiene errores, lo buscamos
			          // En la base de datos. jeje.
			          def usuario = Usuario.get(u.id)

			          def ventasUsuario = Venta.findAllByUsuario(usuario)

		        %>
				
				%{-- <g:each in="${ventaInstanceList}" status="i" var="ventaInstance"> --}%
				<g:each in="${ventasUsuario}" status="i" var="ventaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: ventaInstance, field: "codigo")}</td>


						<td><g:link action="show" id="${ventaInstance.id}">${fieldValue(bean: ventaInstance, field: "carrito")}</g:link></td>
					
					
						<td><g:formatDate date="${ventaInstance.fecha}" /></td>
					
						<td>
							${fieldValue(bean: ventaInstance, field: "apellido")}
							${fieldValue(bean: ventaInstance, field: "nombre")}
						</td>
					
						
						<td>${fieldValue(bean: ventaInstance, field: "total")} $</td>

						%{-- <td>${fieldValue(bean: ventaInstance, field: "codigoseg")}</td> --}%
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ventaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
