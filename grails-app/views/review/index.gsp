<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="majestic" />
    <g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="table-responsive">
    <table id="recent-purchases-listing" class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Value</th>
            <th>Problem Description</th>
            <th>Resolved</th>
        </tr>
        </thead>
        <tbody>
        <g:each var="review" in="${reviewList}">
            <tr>
                <td><g:link action="show" resource="${review}">${review.id}</g:link></td>
                <td>${review.value}</td>
                <td>${review.problemDescription}</td>
                <td>${review.resolved}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>