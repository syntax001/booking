<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Check Remaining Points
        <br>
        <div style="margin-top: 1em;">
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/studentpage"> <btn-text>Back to Landing Page</btn-text></a>
        </div>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>${sessionScope.email} </h1>
        To check your remaining points, please type your student email below:
        <div>
            <form name="email" action="${pageContext.request.contextPath}/fc/remainingpointsresult" method="POST">
                <div class="row mb-3">
                    <label class="col-sm-1 col-form-label" for="email">Email:</label>
                    <div class="col-sm-4">
                        <input id="email" class="form-control" type="text" name="email" value="${param.email}" placeholder="Enter Email">
                    </div>
                </div>
                <input class="btn btn-primary" type="submit" value="Check Points">
            </form>
        </div>
    </jsp:body>
</t:genericpage>

