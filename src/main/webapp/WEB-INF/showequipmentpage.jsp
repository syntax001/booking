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
            <td>EQUIPMENT ID:</td>
            <td>EQUIPMENT NAME:</td>
            <td>EQUIPMENT DESCRIPTION:</td>
        </tr>
            <c:forEach var="equipment" items="${requestScope.equipmentList}">
                <tr>
                    <td>${equipment.id}</td>
                    <td>${equipment.item_name}</td>
                    <td>${equipment.item_description}</td>
                </tr>

            </c:forEach>
    </jsp:body>
</t:genericpage>

