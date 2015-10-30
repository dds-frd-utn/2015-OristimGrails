<%@ page import="oristim.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="45" required="" value="${usuarioInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="45" required="" value="${usuarioInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="45" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="usuario.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" maxlength="45" required="" value="${usuarioInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" maxlength="45" required="" value="${usuarioInstance?.email}"/>

</div>

