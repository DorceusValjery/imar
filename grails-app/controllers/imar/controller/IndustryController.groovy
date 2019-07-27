package imar.controller

import grails.validation.ValidationException
import imar.supplier.Industry
import imar.supplier.IndustryService

import static org.springframework.http.HttpStatus.*

class IndustryController {

    IndustryService industryService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond industryService.list(params), model:[industryCount: industryService.count()]
    }

    def show(Long id) {
        respond industryService.get(id)
    }

    def create() {
        respond new Industry(params)
    }

    def save(Industry industry) {
        if (industry == null) {
            notFound()
            return
        }

        try {
            industryService.save(industry)
        } catch (ValidationException e) {
            respond industry.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'industry.label', default: 'Industry'), industry.id])
                redirect industry
            }
            '*' { respond industry, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond industryService.get(id)
    }

    def update(Industry industry) {
        if (industry == null) {
            notFound()
            return
        }

        try {
            industryService.save(industry)
        } catch (ValidationException e) {
            respond industry.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'industry.label', default: 'Industry'), industry.id])
                redirect industry
            }
            '*'{ respond industry, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        industryService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'industry.label', default: 'Industry'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'industry.label', default: 'Industry'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
