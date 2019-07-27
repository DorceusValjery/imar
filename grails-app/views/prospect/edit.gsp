<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'prospect.label', default: 'Prospect')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>

    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title"><g:message code="default.edit.label" args="[entityName]" /></h4>

                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.prospect}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.prospect}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form resource="${this.prospect}" method="PUT" class="form-sample">
                    <g:hiddenField name="version" value="${this.prospect?.version}" />
                    <p class="card-description">
                        <span>Prospect information</span>
                    </p>
                    <!-- NAME + ADDRESS + WEBSITE -->
                    <f:with bean="prospect">
                        <div class="row imarFormSection">
                            <div class="col-md-4">
                                <f:field  property="person.lastname" /><br>
                                <f:field property="person.firstname"/><br>
                                <f:field  property="person.secondName" /><br>
                            </div>
                            <div class="col-md-5">
                                <f:field property="person.email"/><br>
                                <f:field property="active"/><br>
                                <f:field property="state"/><br>
                            </div>
                            <div class="col-md-3"></div>
                        </div>
                    </f:with>
                    <g:submitButton name="edit" class="save btn btn-success btn-lg" value="${message(code: 'default.button.update.label', default: 'Create')}" />
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>
