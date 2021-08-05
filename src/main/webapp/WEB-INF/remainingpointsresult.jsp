<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Check Remaining Points
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>${sessionScope.email} </h1>
        You have: ${requestScope.remainingPoints} points remaining.

        <br>
        <div style="margin-top: 1em;">
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/studentpage"> <btn-text>Back to Landing Page</btn-text></a>
        </div>

    </jsp:body>
</t:genericpage>

