<!DOCTYPE html>
<html>
	<head>
		<title><g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
		<meta name="layout" content="main">
		<g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
	</head>
	<body>
		<g:if env="development">
			<h1>Error</h1>
			<h2>
				No disponible
			</h2>
			<img src="http://www.aceroymagia.com/Images/articulo/cuadro-canvas-patan-muttley-autos-locos/01-cuadro-canvas-patan-muttley-autos-locos.jpg">
			%{-- <g:renderException exception="${exception}" /> --}%
		</g:if>
		<g:else>
			<ul class="errors">
				<li>An error has occurred</li>
			</ul>
		</g:else>
	</body>
</html>
