<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
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
                <g:hasErrors bean="${this.client}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.client}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:with bean="client">
                    <div class="row imarDisplaySection">
                        <div class="col-md-4">
                            <label for="name">First Name : </label>
                            <f:display  property="person.lastname" /><br>
                            <label for="address">Last Name : </label>
                            <f:display  property="person.firstname" /><br>
                            <label for="pointOfContact">Middle Name : </label>
                            <f:display property="person.secondName" /><br>
                        </div>
                        <div class="col-md-4">
                            <label for="visitedFactory">Visited factory : </label>
                            <f:display property="becameClientOn"/><br>
                            <label for="haveMetRepresentative">Has met representative : </label>
                            <f:display property="person.dateOfBirth"/><br>
                            <label for="backgroundCheck">Background check : </label>
                            <f:display property="person.email"/><br>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                </f:with>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-4">
                        <g:form resource="${this.client}" method="DELETE">
                            <fieldset class="buttons">
                                <g:link class="edit btn btn-warning btn-lg" action="edit" resource="${this.client}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                <input class="delete btn btn-danger btn-lg" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </fieldset>
                        </g:form>
                    </div>
                    <div class="col-md-5"></div>
                </div>

            </div>
        </div>
    </div>
    </body>
</html>
