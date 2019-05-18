<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'specialization.label', default: 'Specialization')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="table-responsive">

        <h5><g:message code="default.list.label" args="[entityName]" /></h5>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="imarPagination">
            <g:paginate total="${specializationCount ?: 0}" />
        </div>
        <table id="recent-purchases-listing" class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Specialization Prefix</th>
                <th>Specialization Name</th>
                <th>Industry Prefix</th>
                <th>Industry Name</th>
                <th>Nbr of Suppliers</th>
            </tr>
            </thead>
            <tbody>
            <g:each var="spec" in="${specializationList}">
                <tr>
                    <td>${spec.id}</td>
                    <td>${spec.prefix}</td>
                    <td>${spec.name}</td>
                    <td>${spec.industry.prefix}</td>
                    <td>${spec.industry.name}</td>
                    <td>0</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>










        %{--<a href="#list-specialization" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-specialization" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${specializationList}" />

            <div class="pagination">
                <g:paginate total="${specializationCount ?: 0}" />
            </div>
        </div>--}%
    </body>
</html>