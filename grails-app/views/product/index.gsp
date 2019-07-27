<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="majestic" />
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="table-responsive">
    <table id="recent-purchases-listing" class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Supplier Name</th>
            <th>Address</th>
            <th>Acquisition price</th>
        </tr>
        </thead>
        <tbody>
        <g:each var="product" in="${productList}">
            <tr>
                <td><g:link action="show" resource="${product}">${product.id}</g:link></td>
                <td><g:link action="show" resource="${product}">${product.name}</g:link></td>
                <td>${product.supplier.name}</td>
                <td>${product.supplier.address}</td>
                <td>${product.priceOfAcquisition}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>