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
        To start booking equipment, type out the date on which you'd like the equipment to be ready, and the date you intend to return it.
        <br>
        <b>The format has to be yyyy-mm-dd</b>
        <div style="margin-top: 4em;">
            <form name="date" action="${pageContext.request.contextPath}/fc/showbookableequipment" method="POST">
                <div class="row mb-3">
                    <label class="col-sm-1 col-form-label" for="bookingDate">Booking Date:</label>
                    <div class="col-sm-4">
                        <input id="bookingDate" class="form-control" type="text" name="bookingDate" value="${param.bookingDate}" placeholder="Enter start date yyyy-mm-dd">
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-1 col-form-label" for="bookingEnd">Return Date:</label>
                    <div class="col-sm-4">
                        <input id="bookingEnd" class="form-control" type="text" name="bookingEnd"  value="${param.bookingEnd}"  placeholder="Enter end date yyyy-mm-dd">
                    </div>
                </div>
                <input class="btn btn-primary" type="submit" value="Check available equipment">
            </form>


            <c:if test="${requestScope.error != null }">
                <p style="color:red">
                        ${requestScope.error}
                </p>
            </c:if>
        </div>

    </jsp:body>

</t:genericpage>

