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

        "500"(view:'/error')
        
	}
}
