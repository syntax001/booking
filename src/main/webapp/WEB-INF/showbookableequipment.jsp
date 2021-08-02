<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Book Equipment Page
        <br>
        <div style="margin-top: 1em;">
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/studentpage"> <btn-text>Back to Landing Page</btn-text></a>
        </div>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>${sessionScope.email} </h1>
        <br>
        To book equipment, take a look at what is available, and type in the Equipment ID if the item you wish to book.

        <div style="margin-top: 2em;">
            <b>HERE'S A LIST OF ALL AVAILABLE EQUIPMENT IN YOUR CHOSEN TIMESPAN:</b>
        <table class="table table-striped">
        <tr>
            <td><b>EQUIPMENT ID:</b></td>
            <td><b>EQUIPMENT NAME:</b></td>
            <td><b>EQUIPMENT DESCRIPTION:</b></td>
        </tr>
        <c:forEach var="equipment" items="${requestScope.itemList}">
            <tr>
                <td>${equipment.id}</td>
                <td>${equipment.itemName}</td>
                <td>${equipment.itemDescription}</td>
            </tr>
        </c:forEach>
        </table>



        <form name="date" action="${pageContext.request.contextPath}/fc/bookingreceipt" method="POST">
            <div class="row mb-3">
                <label class="col-sm-1 col-form-label" for="bookedItem">Equipment ID:</label>
                <div class="col-sm-4">
                    <input id="bookedItem" class="form-control" type="text" name="bookedItem" value="${param.bookedItem}" placeholder="Enter an Equipment ID from the list">
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-1 col-form-label" for="bookingDate">Booking Date:</label>
                <div class="col-sm-4">
                    <input id="bookingDate" class="form-control" type="text" name="bookingDate" value="${param.bookingDate}" placeholder="Enter Start Date">
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-1 col-form-label" for="bookingEnd">Return Date:</label>
                <div class="col-sm-4">
                    <input id="bookingEnd" class="form-control" type="text" name="bookingEnd"  value="${param.bookingEnd}"  placeholder="Enter End Date">
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-1 col-form-label" for="email">Student Email:</label>
                <div class="col-sm-4">
                    <input id="email" class="form-control" type="text" name="email"  value="${param.email}"  placeholder="Enter your Student Email">
                </div>
            </div>
            <input class="btn btn-primary" type="submit" value="Book">
        </form>
        </div>


    </jsp:body>

</t:genericpage>

