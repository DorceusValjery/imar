<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="majestic" />
    <g:set var="entityName" value="${message(code: 'purchase.label', default: 'Purchase')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="table-responsive">
    <table id="recent-purchases-listing" class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Purchase Number</th>
            <th>Client Name</th>
            <th>Departure</th>
            <th>Arrival</th>
            <th>Cargo Type</th>
            <th>Shipping Method</th>
        </tr>
        </thead>
        <tbody>
        <g:each var="purchase" in="${purchaseList}">
            <tr>
                <td><g:link action="show" resource="${purchase}"> ${purchase.id}</g:link></td>
                <td><g:link action="show" resource="${purchase}">${purchase.purchaseNumber}</g:link></td>
                <td>${purchase.client.person.firstname +" "+ purchase.client.person.lastname}</td>
                <td>${purchase.portOfLoading.name}</td>
                <td>${purchase.portOfDelivery.name}</td>
                <td>${purchase.typeOfCargo}</td>
                <td>${purchase.shippingMethod}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>