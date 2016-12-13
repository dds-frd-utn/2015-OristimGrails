<html>
<head>
	<title>Compra exitosa</title>
</head>

<style type="text/css">
	.notif-body{
		position: fixed;
		top:30%;
		right: 0px;
		padding: 40px 20% 40px 20%;
		font-family: sans-serif;
		background-color: #313131;
		color: white;
	}

	.notif-button{
		padding: 10px;
		min-width: 10%;
		margin-left: 2%;
		float: right;
		font-weight: bold;
	}
</style>

<body bgcolor="#7E7E7E">
	<div class="notif-body">
		<div class="mid">
			<a href="/"><img src="/img/oristimPiola.png" style="margin-top:10px;" width="20%"></a>
			<a href="/"><img src="/img/hardcode.png" width="27%"></a>
			<h3>Muchas Gracias.</h3>
			<p>Su compra se ha realizado con exito. Esperamos que disfrute de su nuevo producto.</p>
			<button class="notif-button"  onclick="window.location.href='/venta'">Mis Compras</button>
			<button class="notif-button" onclick="window.location.href='/'">Volver al Menú</button>
		</div>
	</div>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</body>
</html>