<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Removal Successful
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>${sessionScope.email}</h1>
        <br>
        <h1>Booking removed!</h1>
        Booking <b>${param.bookingId}</b> has been marked as returned and removed from the Database of bookable equipment.
        <br>
        <div style="margin-top: 1em;">
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/administratorpage"> <btn-text>Back to Control Panel</btn-text></a>
        </div>
    </jsp:body>
</t:genericpage>

