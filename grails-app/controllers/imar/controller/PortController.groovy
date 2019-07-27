package imar.controller

import grails.validation.ValidationException
import imar.order.Port
import imar.order.PortService

import static org.springframework.http.HttpStatus.*

class PortController {

    PortService portService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond portService.list(params), model:[portCount: portService.count()]
    }

    def show(Long id) {
        respond portService.get(id)
    }

    def create() {
        respond new Port(params)
    }

    def save(Port port) {
        if (port == null) {
            notFound()
            return
        }

        try {
            portService.save(port)
        } catch (ValidationException e) {
            respond port.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'port.label', default: 'Port'), port.id])
                redirect port
            }
            '*' { respond port, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond portService.get(id)
    }

    def update(Port port) {
        if (port == null) {
            notFound()
            return
        }

        try {
            portService.save(port)
        } catch (ValidationException e) {
            respond port.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'port.label', default: 'Port'), port.id])
                redirect port
            }
            '*'{ respond port, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        portService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'port.label', default: 'Port'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'port.label', default: 'Port'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
