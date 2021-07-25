<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Login Created Successfully
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        Student Login has been successfully created and added to the database!
        <br>
        <a href="${pageContext.request.contextPath}/fc/administratorpage">Go back to Administrator Page</a>
    </jsp:body>
</t:genericpage>
