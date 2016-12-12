class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        // Controlador Plataforma
        "/plataforma"(controller:"FilterJuego")

        // Parametros Plataforma
        "/plataforma/$p"(controller:"FilterJuego", action:"byPlataforma")

        // Por Genero
        "/categoria/$c"(controller:"FilterJuego", action:"byCategoria")
		
        // "/"(controller:"FilterJuego", view:"/index")
        "/"(controller:"FilterJuego")

        // Agregar juego, pasando parametro un ID
        "/agregar/$idJuego"(controller:"AgregarJuego", action:"index")

        "/carrito"(controller:"AgregarJuego", action:"getCarritoJuegos")

        "/borrar/$id"(controller:"AgregarJuego", action:"eliminarElemento")

        "/guardar"(controller:"AgregarJuego", action:"guardarCarrito")

        "500"(view:'/error')

        "/alerta"(view:'/alerta/alerta')
        
	}
}
