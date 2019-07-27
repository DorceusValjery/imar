<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'port.label', default: 'Port')}" />
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
                <g:hasErrors bean="${this.port}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.port}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:with bean="port">
                    <div class="row imarDisplaySection">
                        <div class="col-md-4">
                            <label for="name">Name : </label>
                            <f:display  property="name" /><br>
                            <label for="address">Rating : </label>
                            <f:display  property="rating" /><br>
                            <label for="pointOfContact">Point of contact : </label>
                            <f:display property="pointOfContact" /><br>
                        </div>
                        <div class="col-md-4">
                            <label for="visitedFactory">Longitude : </label>
                            <f:display property="longitude"/><br>
                            <label for="haveMetRepresentative">Latitude : </label>
                            <f:display property="latitude"/><br>
                            <label for="backgroundCheck">Comments : </label>
                            <f:display property="comments"/><br>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                </f:with>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-4">
                        <g:form resource="${this.port}" method="DELETE">
                            <fieldset class="buttons">
                                <g:link class="edit btn btn-warning btn-lg" action="edit" resource="${this.port}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
