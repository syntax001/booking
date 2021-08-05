<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Showing All Registered Equipment
        <br>
        <div style="margin-top: 1em;">
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/administratorpage"> <btn-text>Back to Admin Control Panel</btn-text></a>
        </div>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        Heres a list of all equipment:
        <table class="table table-striped">
        <tr>
            <td><b>EQUIPMENT ID:</b></td>
            <td><b>EQUIPMENT NAME:</b></td>
            <td><b>EQUIPMENT DESCRIPTION:</b></td>
        </tr>
            <c:forEach var="equipment" items="${requestScope.equipmentList}">
                <tr>
                    <td>${equipment.id}</td>
                    <td>${equipment.itemName}</td>
                    <td>${equipment.itemDescription}</td>
                </tr>
            </c:forEach>
    </jsp:body>
</t:genericpage>

