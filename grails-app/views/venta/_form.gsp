<%@ page import="oristim.Venta" %>



<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'carrito', 'error')} required">
	<label for="carrito">
		<g:message code="venta.carrito.label" default="Carrito" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="carrito" name="carrito.id" from="${oristim.Carrito.list()}" optionKey="id" required="" value="${ventaInstance?.carrito?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="venta.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="total" value="${fieldValue(bean: ventaInstance, field: 'total')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="venta.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${ventaInstance?.fecha}"  />

</div>

