<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'venta.label', default: 'Venta')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-venta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-venta" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${ventaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${ventaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>

		%{--	<g:form controller="venta" action="save">
	            <fieldset class="form">
	            	<label>nombre: </label>
	            	<g:textField name="nombre"/><br/>
	            	<label>apellido: </label>
	            	<g:textField name="apellido"/><br/>
	            	<label>tarjeta: </label>
	            	<g:textField name="tarjeta"/><br/>
	            	<label>código de seguridad: </label>
	            	<g:textField name="codigoseg"/><br/>
	            	<label>vencimiento: </label>
	            	<g:textField name="vencimiento"/><br/>
	            	<fieldset class="buttons">
	           			<g:actionSubmit value="Save"/>
					</fieldset>
	           	</fieldset>
        	</g:form> --}%



			<g:form url="[resource:ventaInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
			
		</div>
	</body>
</html>
