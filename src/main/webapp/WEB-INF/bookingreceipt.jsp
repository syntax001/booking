<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Booking Successful!
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>${sessionScope.email}</h1>
        <br>
        <h1>Booking successfully placed!</h1>
        You've booked ${param.bookedItem}!
        <br>
        You can pick up this item at <b>${param.bookingDate}</b> and you are expected to return it on <b>${param.bookingEnd}</b>!
        <div style="margin-top: 1em;">
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/studentpage"> <btn-text>Back to Landing Page</btn-text></a>
        </div>


    </jsp:body>

</t:genericpage>

