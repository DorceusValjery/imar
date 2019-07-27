<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>

    <div class="col-12 grid-margin">
        <br>
        <h4 class="card-title"><g:message code="${entityName}" /></h4><br>
        <div class="card">
            <div class="card-body">
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
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:with bean="supplier">
                    <div class="row imarDisplaySection">
                        <div class="col-md-4">
                            <label for="name">Supplier Name : </label>
                            <f:display  property="name" /><br>
                            <label for="address">Address : </label>
                            <f:display  property="address" /><br>
                            <label for="pointOfContact">Point of contact : </label>
                            <f:display property="pointOfContact" /><br>
                            <label for="website">Website : </label>
                            <f:display  property="website" /><br>
                            <label for="sizeOfCompany">Company size : </label>
                            <f:display property="sizeOfCompany"/><br>
                            <label for="acquiredOn">Acquisition Date : </label>
                            <f:display property="acquiredOn"/><br>
                            <label for="acquisitionProcess">Acquisition Process : </label>
                            <f:display property="acquisitionProcess"/><br>
                            <label for="doingBusinessSince">Est. Date : </label>
                            <f:display property="doingBusinessSince"/><br>
                            <label for="businessHistoric">Business Historic : </label>
                            <f:display property="businessHistoric"/><br>
                        </div>
                        <div class="col-md-4">
                            <label for="visitedFactory">Visited factory : </label>
                            <f:display property="visitedFactory"/><br>
                            <label for="haveMetRepresentative">Has met representative : </label>
                            <f:display property="haveMetRepresentative"/><br>
                            <label for="backgroundCheck">Background check : </label>
                            <f:display property="backgroundCheck"/><br>
                            <label for="afterSaleService">After Sale Service : </label>
                            <f:display property="afterSaleService"/><br>
                            <label for="speakEnglish">Speaks English : </label>
                            <f:display property="speakEnglish"/><br>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                </f:with>
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-2">
                        <g:form resource="${this.supplier}" method="DELETE">
                            <fieldset class="buttons">
                                <g:link class="edit btn btn-warning btn-lg" action="edit" resource="${this.supplier}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                <input class="delete btn btn-danger btn-lg" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </fieldset>
                        </g:form>
                    </div>
                    <div class="col-md-6"></div>
                </div>

            </div>
        </div>
    </div>

    </body>
</html>
