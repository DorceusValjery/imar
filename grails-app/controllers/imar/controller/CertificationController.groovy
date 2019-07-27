package imar.controller

import grails.validation.ValidationException
import imar.supplier.Certification
import imar.supplier.CertificationService

import static org.springframework.http.HttpStatus.*

class CertificationController {

    CertificationService certificationService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond certificationService.list(params), model:[certificationCount: certificationService.count()]
    }

    def show(Long id) {
        respond certificationService.get(id)
    }

    def create() {
        respond new Certification(params)
    }

    def save(Certification certification) {
        if (certification == null) {
            notFound()
            return
        }

        try {
            certificationService.save(certification)
        } catch (ValidationException e) {
            respond certification.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'certification.label', default: 'Certification'), certification.id])
                redirect certification
            }
            '*' { respond certification, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond certificationService.get(id)
    }

    def update(Certification certification) {
        if (certification == null) {
            notFound()
            return
        }

        try {
            certificationService.save(certification)
        } catch (ValidationException e) {
            respond certification.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'certification.label', default: 'Certification'), certification.id])
                redirect certification
            }
            '*'{ respond certification, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        certificationService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'certification.label', default: 'Certification'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'certification.label', default: 'Certification'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
