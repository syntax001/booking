<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Student Landing Page
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        <br>
        <bookingText1>You are logged in as a Student.</bookingText1>
        <br>
        <div style="margin-top: 4em;">
        <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/book"> <btn-text>Book Equipment</btn-text></a>
        </div>
    </jsp:body>
</t:genericpage>

