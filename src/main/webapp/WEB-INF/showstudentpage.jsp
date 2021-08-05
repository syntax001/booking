<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Show All Registered Students
        <br>
        <div style="margin-top: 1em;">
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/administratorpage"> <btn-text>Back to Admin Control Panel</btn-text></a>
        </div>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        Heres a list of all students:
        <table class="table table-striped">
        <tr>
            <td><b>STUDENT ID:</b></td>
            <td><b>STUDENT NAME:</b></td>
            <td><b>STUDENT EMAIL:</b></td>
            <td><b>STUDENT PHONE:</b></td>
            <td><b>STUDENT POINTS REMAINING:</b></td>
        </tr>
            <c:forEach var="student" items="${requestScope.studentList}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.email}</td>
                    <td>${student.phoneNumber}</td>
                    <td>${student.points}</td>
                </tr>

            </c:forEach>
    </jsp:body>

</t:genericpage>

