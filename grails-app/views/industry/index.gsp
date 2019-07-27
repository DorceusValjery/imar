<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="majestic" />
    <g:set var="entityName" value="${message(code: 'industry.label', default: 'Industry')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="table-responsive">
    <table id="recent-purchases-listing" class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Prefix</th>
            <th>Name</th>
            <th>Specializations</th>
        </tr>
        </thead>
        <tbody>
        <g:each var="industry" in="${industryList}">
            <tr>
                <td><g:link action="show" resource="${industry}">${industry.id}</g:link></td>
                <td><g:link action="show" resource="${industry}">${industry.prefix}</g:link></td>
                <td><g:link action="show" resource="${industry}">${industry.name}</g:link></td>
                <td>0</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>