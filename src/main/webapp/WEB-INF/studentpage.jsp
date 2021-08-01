<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Demo Page for Student Roles
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <bookingHeader1>Hello ${sessionScope.email} </bookingHeader1>
        You are logged in as a Student.
        <br>
        <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/book"> <btn-text>Book Equipment</btn-text></a>
    </jsp:body>

</t:genericpage>

