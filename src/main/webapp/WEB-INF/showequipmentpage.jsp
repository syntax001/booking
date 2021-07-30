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
        Heres a list of all bookable equipment:
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

