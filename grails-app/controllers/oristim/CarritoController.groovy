package oristim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CarritoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Carrito.list(params), model:[carritoInstanceCount: Carrito.count()]
    }

    def show(Carrito carritoInstance) {
        respond carritoInstance
    }

    def create() {
        respond new Carrito(params)
    }

    @Transactional
    def save(Carrito carritoInstance) {
        if (carritoInstance == null) {
            notFound()
            return
        }

        if (carritoInstance.hasErrors()) {
            respond carritoInstance.errors, view:'create'
            return
        }

        carritoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'carrito.label', default: 'Carrito'), carritoInstance.id])
                redirect carritoInstance
            }
            '*' { respond carritoInstance, [status: CREATED] }
        }
    }

    def edit(Carrito carritoInstance) {
        respond carritoInstance
    }

    @Transactional
    def update(Carrito carritoInstance) {
        if (carritoInstance == null) {
            notFound()
            return
        }

        if (carritoInstance.hasErrors()) {
            respond carritoInstance.errors, view:'edit'
            return
        }

        carritoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Carrito.label', default: 'Carrito'), carritoInstance.id])
                redirect carritoInstance
            }
            '*'{ respond carritoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Carrito carritoInstance) {

        if (carritoInstance == null) {
            notFound()
            return
        }

        carritoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Carrito.label', default: 'Carrito'), carritoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'carrito.label', default: 'Carrito'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
