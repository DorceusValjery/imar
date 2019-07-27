<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="majestic" />
    <g:set var="entityName" value="${message(code: 'prospect.label', default: 'Prospect')}" />
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
            <th>ACTIVE</th>
            <th>STATE</th>
        </tr>
        </thead>
        <tbody>
        <g:each var="prospect" in="${prospectList}">
            <tr>
                <td><g:link action="show" resource="${prospect}">${prospect.id}</g:link></td>
                <td><g:link action="show" resource="${prospect}">${prospect.person.firstname}</g:link></td>
                <td>${prospect.person.lastname}</td>
                <td>${prospect.person.email}</td>
                <td>${prospect.active? "ACTIVE" : "INACTIVE"}</td>
                <td>${prospect.state} </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>