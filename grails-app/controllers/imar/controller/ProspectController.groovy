package imar.controller

import grails.validation.ValidationException
import imar.client.Prospect
import imar.client.ProspectService

import static org.springframework.http.HttpStatus.*

class ProspectController {

    ProspectService prospectService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond prospectService.list(params), model:[prospectCount: prospectService.count()]
    }

    def show(Long id) {
        respond prospectService.get(id)
    }

    def create() {
        respond new Prospect(params)
    }

    def save(Prospect prospect) {
        if (prospect == null) {
            notFound()
            return
        }

        try {
            prospectService.save(prospect)
        } catch (ValidationException e) {
            respond prospect.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'prospect.label', default: 'Prospect'), prospect.id])
                redirect prospect
            }
            '*' { respond prospect, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond prospectService.get(id)
    }

    def update(Prospect prospect) {
        if (prospect == null) {
            notFound()
            return
        }

        try {
            prospectService.save(prospect)
        } catch (ValidationException e) {
            respond prospect.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'prospect.label', default: 'Prospect'), prospect.id])
                redirect prospect
            }
            '*'{ respond prospect, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        prospectService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'prospect.label', default: 'Prospect'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'prospect.label', default: 'Prospect'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
