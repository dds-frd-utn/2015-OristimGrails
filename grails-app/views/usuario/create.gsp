<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                <div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<!-- <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li> -->
			</ul>
		</div>
		<div id="create-usuario" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${usuarioInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${usuarioInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<!-- <g:form url="[resource:usuarioInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form> -->

			<form action="/usuario/save" method="post">
				<fieldset class="form">
					



<div class="fieldcontain  required">
	<label for="username">
		Nombre de Usuario
		<span class="required-indicator">*</span>
	</label>
	<input type="text" name="username" maxlength="45" required="" value="" id="username">

</div>

<div class="fieldcontain  required">
	<label for="password">
		Contraseña
		<span class="required-indicator">*</span>
	</label>
	<input type="password" name="password" maxlength="45" required="" value="" id="password">

</div>

<div class="fieldcontain  required">
	<label for="repassword">
		Repetir Contraseña
		<span class="required-indicator">*</span>
	</label>
	<input type="password" name="repassword" maxlength="45" required="" value="" id="repassword">
	<span class="pass" style="display:none; color:#cc0000;">Las contraseñas no coinciden</span>

</div>

<div class="fieldcontain  required">
	<label for="nombre">
		Nombre
		<span class="required-indicator">*</span>
	</label>
	<input type="text" name="nombre" maxlength="45" required="" value="" id="nombre">

</div>

<div class="fieldcontain  required">
	<label for="apellido">
		Apellido
		<span class="required-indicator">*</span>
	</label>
	<input type="text" name="apellido" maxlength="45" required="" value="" id="apellido">

</div>

<div class="fieldcontain  required">
	<label for="email">
		Email
		<span class="required-indicator">*</span>
	</label>
	<input type="text" name="email" maxlength="45" required="" value="" id="email">

</div>


				</fieldset>
				<fieldset class="buttons">
					<input type="submit" name="create" class="save" value="Crear" id="create">
				</fieldset>
			</form>
		</div>
<g:javascript>
            $(document).ready(function () {

				validatePass();
			})

function validatePass(){

		$("#repassword").focusout(function(e) { // esto se ejecuta cuando termina de escribir en el campo repetir pass
	// si las pass son distintas, muestra el error y deshabilita el boton
			if ($("#password").val() != $("#repassword").val()){
				$(".pass").show()
				$("#create").attr('disabled',true)
			}else{
	// cuando el usuario lo corrije, se oculta el mensaje y se habilita el boton
				$(".pass").hide()
				$("#create").attr('disabled',false)
			}
		})
}

        </g:javascript>
	</body>
</html>
