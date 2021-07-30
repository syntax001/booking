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
        <h1>Hello ${sessionScope.email} </h1>
        you are on booking site
        Role: ${sessionScope.role}

        <div style="margin-top: 5em;">
            <form name="date" action="${pageContext.request.contextPath}/fc/showbookableequipment" method="POST">
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
                <input class="btn btn-primary" type="submit" type="submit" value="Submit">
            </form>


            <c:if test="${requestScope.error != null }">
                <p style="color:red">
                        ${requestScope.error}
                </p>
            </c:if>
        </div>

    </jsp:body>

</t:genericpage>
