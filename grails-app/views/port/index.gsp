<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="majestic" />
    <g:set var="entityName" value="${message(code: 'port.label', default: 'Ports')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="table-responsive">
    <table id="recent-purchases-listing" class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Longitude</th>
            <th>Latitude</th>
            <th>Rating </th>
            <th>Person of contact</th>
        </tr>
        </thead>
        <tbody>
        <g:each var="port" in="${portList}">
            <tr>
                <td><g:link action="show" resource="${port}">${port.id}</g:link></td>
                <td><g:link action="show" resource="${port}">${port.name}</g:link></td>
                <td>${port.longitude}</td>
                <td>${port.latitude}</td>
                <td>${port.rating}</td>
                <td>${port?.toString()}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>