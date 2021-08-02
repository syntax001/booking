<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         CPH Business Equipment Booking
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>

        <div>
            <h2>Welcome to CPH Business Equipment Booking!</h2>

            <div style="margin-top: 3em;margin-bottom: 3em;">
                If you haven't already received a login from your Teacher, let them know so they can get you signed up.
            </div>

            <c:if test="${sessionScope.role == 'administrator' }">
                <div style="margin-top: 1em;">
                    You're logged in as an administrator!
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/administratorpage"> <btn-text>Go to Control Panel</btn-text></a>
                </div>
             </c:if>

             <c:if test="${sessionScope.role == 'student' }">
            <div style="margin-top: 1em;">
                You're logged in as a student!
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/studentpage"> <btn-text>Get started booking</btn-text></a>
            </div>
            </c:if>

        </div>

    </jsp:body>
</t:genericpage>