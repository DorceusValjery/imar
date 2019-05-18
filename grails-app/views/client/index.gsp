<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="table-responsive">
        <table id="recent-purchases-listing" class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Email</th>
                <th>Became Client On</th>
                <th>Nbr of Orders</th>
            </tr>
            </thead>
            <tbody>
            <g:each var="client" in="${clientList}">
                <tr>
                    <td>${client.id}</td>
                    <td>${client.person.firstname}</td>
                    <td>${client.person.lastname}</td>
                    <td>${client.person.email}</td>
                    <td>${client.becameClientOn}</td>
                    <td>0</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    <div class="pagination">
        <g:paginate total="${clientCount ?: 0}" />
    </div>



    <!-------------------------------------------------

    GRAILS GENERATED CODES
    ----------------------------------------------->
        %{--<a href="#list-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>--}%
        %{--<div id="list-client" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${clientList}" />

            <div class="pagination">
                <g:paginate total="${clientCount ?: 0}" />
            </div>
        </div>--}%
    </body>
</html>