<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
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
                <g:hasErrors bean="${this.review}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.review}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form resource="${this.review}" method="PUT" class="form-sample">
                    <g:hiddenField name="version" value="${this.review?.version}" />
                    <p class="card-description">
                        <span>Review information</span>
                    </p>
                    <!-- NAME + ADDRESS + WEBSITE -->
                    <f:with bean="review">
                        <div class="row imarFormSection">
                            <div class="col-md-4">
                                <f:field  property="tag" /><br>
                                <f:field property="value"/><br>
                            </div>
                            <div class="col-md-5">
                                <f:field property="resolved"/><br>
                                <f:field property="problemDescription"/><br>
                            </div>
                            <div class="col-md-3"></div>
                        </div>
                    </f:with>
                    <g:submitButton name="edit" class="save btn btn-success btn-lg" value="${message(code: 'default.button.update.label', default: 'Create')}" />
                </g:form>
            </div>
        </div>
    </body>
</html>
