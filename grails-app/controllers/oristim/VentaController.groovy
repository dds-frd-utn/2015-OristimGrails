package oristim


import oritisim.*
import session.*
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VentaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Venta.list(params), model:[ventaInstanceCount: Venta.count()]
    }

    def show(Venta ventaInstance) {
        respond ventaInstance
    }

    def create() {
        respond new Venta(params)
    }

    @Transactional
    def save(Venta ventaInstance) {
        // traigo esta movida para llenar el carrito
        // Session manager
        def smgr = new SessionManager(request.session)
        // Traemos el usuario de la sesion.
        def u = smgr.getCurrentUsr()
        // Como a veces tiene errores, lo buscamos
        // En la base de datos. jeje.
        def usuario = Usuario.get(u.id)
        // traemos el carrito temporal del usuario.
        def c2 = usuario.carritoTemp
        //traigo los juegos en el carrito.
        def j = c2.juegos
        // calculamos el total de la movida.
        def total = j.sum{ it.precio }
        //Creo un carrito piola y lo guardo en la db.
        // este carrito no se elimina mas.
        def carro = new Carrito(
            usuario: usuario,
            estado: "f",
            juegos: j
        ).save(flush:true)
        

        println("voy a agregar a la compra unos juegos. ${j}")
        println("${params.nombre}");
        //vamos a crear la venta y guardar en la db.
        new Venta(
            nombre: params.nombre,
            apellido: params.apellido,
            tarjeta: params.tarjeta,
            //Estuve renegando como un hdp porque martin
            // escribio mal el nombre del codigo, la ptm.
            codigoseg: params.codigoseg,
            vencimiento: params.vencimiento,
            total: total,
            fecha: new Date().parse("d/M/yyyy", "14/12/2016"),
            codigo: "111",
            carrito: carro
        ).save(flush:true)
        println("Se ha concretado la compra")

        //elimino el carrito temporal y creo uno nuevo.
        redirect(controller:"AgregarJuego", action: "eliminarCarrito")
        println("eliminamos el carrito")

        

    // total de la compra
    // la fecha que se hizo la compra
    // Codigo de la opreacion.
    // Tarjeta
    // Código de seguridad
    //Nombre
    //Apellido
    //Vencimiento












 /*       if (ventaInstance == null) {
            notFound()
            return
        }

        if (ventaInstance.hasErrors()) {
            respond ventaInstance.errors, view:'create'
            return
        }

        ventaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'venta.label', default: 'Venta'), ventaInstance.id])
                redirect ventaInstance
            }
            '*' { respond ventaInstance, [status: CREATED] }
        } */
    }

    def edit(Venta ventaInstance) {
        respond ventaInstance
    }

    @Transactional
    def update(Venta ventaInstance) {
        if (ventaInstance == null) {
            notFound()
            return
        }

        if (ventaInstance.hasErrors()) {
            respond ventaInstance.errors, view:'edit'
            return
        }

        ventaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Venta.label', default: 'Venta'), ventaInstance.id])
                redirect ventaInstance
            }
            '*'{ respond ventaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Venta ventaInstance) {

        if (ventaInstance == null) {
            notFound()
            return
        }

        ventaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Venta.label', default: 'Venta'), ventaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'venta.label', default: 'Venta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
