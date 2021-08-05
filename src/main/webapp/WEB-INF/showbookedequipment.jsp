<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Show Booked Equipment
        <br>
        <div style="margin-top: 1em;">
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/administratorpage"> <btn-text>Back to Admin Control Panel</btn-text></a>
        </div>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        To delete a booking, enter the Booking ID of the item that has been returned.
        <div>
        <form name="bookingId" action="${pageContext.request.contextPath}/fc/bookingdeletedreceipt" method="POST">
            <div class="row mb-3">
                <label class="col-sm-1 col-form-label" for="bookingId">Booking ID:</label>
                <div class="col-sm-4">
                    <input id="bookingId" class="form-control" type="text" name="bookingId" value="${param.bookingId}" placeholder="Enter Booking ID">
                </div>
            </div>
            <input class="btn btn-primary" type="submit" value="Delete">
        </form>
        </div>


        Heres a list of all booked equipment:
        <table class="table table-striped">
        <tr>
            <td><b>BOOKING ID:</b></td>
            <td><b>BOOKING DATE:</b></td>
            <td><b>BOOKING RETURN DATE:</b></td>
            <td><b>BOOKING STATUS:</b></td>
            <td><b>ITEM BOOKED:</b></td>
            <td><b>BOOKED BY:</b></td>
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

