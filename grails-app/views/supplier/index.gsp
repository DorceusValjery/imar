<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="table-responsive">
        <table id="recent-suppliers-listing" class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Address</th>
                <th>Website</th>
                <th>Point of Contact</th>
                <th>Company size</th>
            </tr>
            </thead>
            <tbody>
            <g:each var="supplier" in="${supplierList}">
                <tr>
                    <td><g:link action="show" resource="${supplier}">${supplier.id}</g:link></td>
                    <td><g:link action="show" resource="${supplier}">${supplier.name}</g:link></td>
                    <td>${supplier.address}</td>
                    <td>${supplier.website}</td>
                    <td>${supplier.pointOfContact}</td>
                    <td>${supplier.sizeOfCompany}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
        %{--<a href="#list-supplier" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-supplier" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${supplierList}" />

            <div class="pagination">
                <g:paginate total="${supplierCount ?: 0}" />
            </div>
        </div>--}%
    </body>
</html>