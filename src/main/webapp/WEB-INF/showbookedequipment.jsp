<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Demo Page for Customer Roles
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        Heres a list of all booked equipment:
        <table class="table table-striped">
        <tr>
            <td><b>BOOKING ID:</b></td>
            <td><b>BOOKING DATE:</b></td>
            <td><b>BOOKING RETURN DATE:</b></td>
            <td><b>BOOKING STATUS:</b></td>
            <td><b>ITEM BOOKED</b></td>
            <td><b>BOOKED BY</b></td>
        </tr>
            <c:forEach var="booking" items="${requestScope.bookingList}">
                <tr>
                    <td>${booking.id}</td>
                    <td>${booking.bookingDate}</td>
                    <td>${booking.bookingEnd}</td>
                    <td>${booking.bookingStatus}</td>
                    <td>${booking.itemId}</td>
                    <td>${booking.email}</td>
                </tr>
            </c:forEach>
    </jsp:body>
</t:genericpage>

