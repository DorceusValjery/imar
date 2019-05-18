<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'certification.label', default: 'Certification')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

    <div class="table-responsive">
        <table id="recent-purchases-listing" class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>ISO-Code</th>
                <th>Obtained On</th>
                <th>Expiring On</th>
                <th>Certified supplies</th>
            </tr>
            </thead>
            <tbody>
            <g:each var="certification" in="${certificationList}">
                <tr>
                    <td>${certification.id}</td>
                    <td>${certification.name}</td>
                    <td>${certification.isoCode}</td>
                    <td>${certification.obtainedOn}</td>
                    <td>${certification.expiringOn}</td>
                    <td>0</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    <div class="pagination">
        <g:paginate total="${clientCount ?: 0}" />
    </div>


        %{--<a href="#list-certification" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-certification" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${certificationList}" />

            <div class="pagination">
                <g:paginate total="${certificationCount ?: 0}" />
            </div>
        </div>--}%
    </body>
</html>