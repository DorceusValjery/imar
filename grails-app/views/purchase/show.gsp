<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'purchase.label', default: 'Purchase')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
<div class="col-12 grid-margin">
    <br>
    <h4 class="card-title"><g:message code="${entityName}" /></h4><br>
    <div class="card">
        <div class="card-body">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.purchase}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.purchase}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:with bean="purchase">
                <div class="row imarFormSection">
                    <div class="col-md-4">
                        <label for="purchaseNumber">Purchase Number : </label>
                        <f:display  property="purchaseNumber" /><br>
                        <label for="client">Client : </label>
                        <f:display property="client"/><br>
                        <label for="shippingMethod">Shipping Method : </label>
                        <f:display  property="shippingMethod" /><br>
                        <label for="typeOfCargo">Type of cargo : </label>
                        <f:display property="typeOfCargo" /><br>
                        <label for="portOfLoading">Loading Port : </label>
                        <f:display property="portOfLoading"/><br>
                        <label for="portOfDelivery">Delivery Port : </label>
                        <f:display  property="portOfDelivery" /><br>
                        <label for="totalCostOfDelivery">Total cost of delivery : </label>
                        <f:display property="totalCostOfDelivery"/><br>
                    </div>
                    <div class="col-md-5">
                        <label for="termsOfPayment">Terms of Payment : </label>
                        <f:display property="termsOfPayment"/><br>
                        <label for="payedOn">Payed On : </label>
                        <f:display property="payedOn"/><br>
                        <label for="deliveredOn">Delivered On : </label>
                        <f:display property="deliveredOn"/><br>
                        <label for="status">Status : </label>
                        <f:display property="status"/><br>
                        <label for="shippingStatus">shippingStatus : </label>
                        <f:display property="shippingStatus"/><br>
                        <label for="deliveryStatus">DeliveryStatus : </label>
                        <f:display property="deliveryStatus"/><br>
                        <label for="pricingTerms">Pricing Terms : </label>
                        <f:display property="pricingTerms"/><br>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </f:with>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-4">
                <g:form resource="${this.purchase}" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="edit btn btn-warning btn-lg" action="edit" resource="${this.purchase}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <input class="delete btn btn-danger btn-lg" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>
            <div class="col-md-5"></div>
        </div>
    </div>
</div>
    </body>
</html>
