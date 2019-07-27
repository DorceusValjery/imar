<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'purchase.label', default: 'Purchase')}" />
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
                <g:hasErrors bean="${this.supplier}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.supplier}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form resource="${this.purchase}" method="PUT" class="form-sample">
                    <g:hiddenField name="version" value="${this.purchase?.version}" />
                    <p class="card-description">
                        <span>Supplier information</span>
                    </p>
                    <!-- NAME + ADDRESS + WEBSITE -->
                    <f:with bean="purchase">
                        <div class="row imarFormSection">
                            <div class="col-md-4">
                                <f:field  property="purchaseNumber" /><br>
                                <f:field property="client"/><br>
                                <f:field  property="shippingMethod" /><br>
                                <f:field property="typeOfCargo" /><br>
                                <f:field property="portOfLoading"/><br>
                                <f:field  property="portOfDelivery" /><br>
                                <f:field property="totalCostOfDelivery"/><br>
                            </div>
                            <div class="col-md-5">
                                <f:field property="termsOfPayment"/><br>
                                <f:field property="payedOn"/><br>
                                <f:field property="deliveredOn"/><br>
                                <f:field property="status"/><br>
                                <f:field property="shippingStatus"/><br>
                                <f:field property="deliveryStatus"/><br>
                                <f:field property="pricingTerms"/><br>
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
