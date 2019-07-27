<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="majestic" />
        <g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="table-responsive">
            <table id="recent-clients-listing" class="table">
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
                        <td> <g:link controller="client" action="show" id="${client.id}" >${client.id}</g:link>    </td>
                        <td><g:link action="show" resource="${client}">${client.person.firstname}</g:link></td>
                        <td>${client.person.lastname}</td>
                        <td>${client.person.email}</td>
                        <td>${client.becameClientOn}</td>
                        <td>0</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>

    </body>
</html>