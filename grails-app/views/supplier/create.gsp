<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
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
                <g:hasErrors bean="${this.supplier}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.supplier}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form resource="${this.supplier}" method="POST" class="form-sample">
                    <p class="card-description">
                        <span>Supplier information</span>
                    </p>
                    <!-- NAME + ADDRESS + WEBSITE -->
                    <f:with bean="supplier">
                    <div class="row imarFormSection">
                        <div class="col-md-4">
                            <f:field  property="name" /><br>
                            <f:field  property="address" /><br>
                            <f:field property="pointOfContact" /><br>
                            <f:field property="businessHistoric"/><br>
                            <f:field  property="website" /><br>
                            <f:field property="acquisitionProcess"/><br>
                        </div>
                        <div class="col-md-5">
                            <f:field property="acquiredOn"/><br>
                            <f:field property="doingBusinessSince"/><br>
                            <f:field property="sizeOfCompany"/><br>
                            <f:field property="visitedFactory"/><br>
                            <f:field property="haveMetRepresentative"/><br>
                            <f:field property="backgroundCheck"/><br>
                            <f:field property="afterSaleService"/><br>
                            <f:field property="speakEnglish"/><br>
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
