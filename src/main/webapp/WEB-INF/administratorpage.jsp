<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Administration Control Panel
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div>
        <h1>Hello ${sessionScope.email} </h1>
        Welcome to the Administrator Control Panel
        <a style="margin-top: 1em;">
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/showstudents"> <btn-text>Show All Students</btn-text></a>
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/showequipment"> <btn-text>Show All Equipment</btn-text></a>
        </a>
        <a style="margin-top: 1em;">
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/addstudent"> <btn-text>Register a Student</btn-text></a>
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/showbookedequipment"> <btn-text>View Booked Equipment</btn-text></a>
        </a>
        </div>
    </jsp:body>
</t:genericpage>
