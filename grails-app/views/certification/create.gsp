<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'certification.label', default: 'Certification')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title"><g:message code="default.create.label" args="[entityName]" /></h4>

                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.certification}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.certification}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form resource="${this.certification}" method="POST" class="form-sample">
                    <p class="card-description">
                        <span>Certification information</span>
                    </p>
                    <!-- NAME + ADDRESS + WEBSITE -->
                    <f:with bean="certification">
                        <div class="row imarFormSection">
                            <div class="col-md-4">
                                <f:field  property="name" /><br>
                                <f:field property="isoCode"/><br>
                            </div>
                            <div class="col-md-5">
                                <f:field property="obtainedOn"/><br>
                                <f:field property="expiringOn"/><br>
                            </div>
                            <div class="col-md-3"></div>
                        </div>
                    </f:with>
                    <g:submitButton name="create" class="save btn btn-success btn-lg" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>
