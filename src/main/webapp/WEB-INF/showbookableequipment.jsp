<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Here is all the bookable equipment
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        You are now logged in as a Student of our wonderful site.
        Role: ${sessionScope.role}
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

        <div style="margin-top: 5em;">
        <form name="date" action="${pageContext.request.contextPath}/fc/bookingreceipt" method="POST">
            <div class="row mb-3">
                <label class="col-sm-1 col-form-label" for="bookedItem">Write the Item ID of the item you would like to book</label>
                <div class="col-sm-4">
                    <input id="bookedItem" class="form-control" type="text" name="bookedItem" value="${param.bookedItem}" placeholder="Enter an Item ID">
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-1 col-form-label" for="bookingDate">Booking Date</label>
                <div class="col-sm-4">
                    <input id="bookingDate" class="form-control" type="text" name="bookingDate" value="${param.bookingDate}" placeholder="Enter a Date">
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-1 col-form-label" for="dayAmount">How many days would you like to book</label>
                <div class="col-sm-4">
                    <input id="dayAmount" class="form-control" type="text" name="dayAmount"  value="${param.dayAmount}"  placeholder="Enter an amount in days">
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-1 col-form-label" for="email">Student Email</label>
                <div class="col-sm-4">
                    <input id="email" class="form-control" type="text" name="email"  value="${param.email}"  placeholder="Enter your Student Email">
                </div>
            </div>
            <input class="btn btn-primary" type="submit" type="submit" value="Submit">
        </form>




    </jsp:body>

</t:genericpage>

