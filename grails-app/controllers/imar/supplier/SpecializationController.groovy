package imar.supplier

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class SpecializationController {

    SpecializationService specializationService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond specializationService.list(params), model:[specializationCount: specializationService.count()]
    }

    def show(Long id) {
        respond specializationService.get(id)
    }

    def create() {
        respond new Specialization(params)
    }

    def save(Specialization specialization) {
        if (specialization == null) {
            notFound()
            return
        }

        try {
            specializationService.save(specialization)
        } catch (ValidationException e) {
            respond specialization.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'specialization.label', default: 'Specialization'), specialization.id])
                redirect specialization
            }
            '*' { respond specialization, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond specializationService.get(id)
    }

    def update(Specialization specialization) {
        if (specialization == null) {
            notFound()
            return
        }

        try {
            specializationService.save(specialization)
        } catch (ValidationException e) {
            respond specialization.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'specialization.label', default: 'Specialization'), specialization.id])
                redirect specialization
            }
            '*'{ respond specialization, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        specializationService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'specialization.label', default: 'Specialization'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'specialization.label', default: 'Specialization'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
