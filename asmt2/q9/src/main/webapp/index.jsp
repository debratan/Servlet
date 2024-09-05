<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core Tags Demonstration</title>
<script type="text/javascript">
    function redirectToGoogle() {
        window.location.href = 'https://www.google.com';
    }
</script>
</head>
<body>
    <h1>JSTL Core Tags Demonstration</h1>

    <!-- Catch Tag -->
    <h2>Catch Tag</h2>
    <c:catch var="e">
        <% int x = 2 / 0; %>
    </c:catch>
    <c:if test="${e != null}">
        <p>Error: <c:out value="${e}"/></p>
    </c:if>

    <!-- Choose Tag -->
    <h2>Choose Tag</h2>
    <c:set var="value" value="B"/>
    <c:choose>
        <c:when test="${value == 'A'}">
            <p>Value is A</p>
        </c:when>
        <c:when test="${value == 'B'}">
            <p>Value is B</p>
        </c:when>
        <c:otherwise>
            <p>Value is neither A nor B</p>
        </c:otherwise>
    </c:choose>

    <!-- If Tag -->
    <h2>If Tag</h2>
    <c:set var="number" value="10"/>
    <c:if test="${number > 5}">
        <p>Number is greater than 5</p>
    </c:if>

    <!-- Import Tag -->
    <h2>Import Tag</h2>
    <c:import url="header.jsp" var="headerContent"/>
    <c:out value="${headerContent}"/>

    <!-- ForEach Tag -->
    <h2>ForEach Tag</h2>
    <c:set var="items" value="${fn:split('Apple,Banana,Cherry', ',')}"/>
    <ul>
        <c:forEach var="item" items="${items}">
            <li><c:out value="${item}"/></li>
        </c:forEach>
    </ul>

    <!-- ForTokens Tag -->
    <h2>ForTokens Tag</h2>
    <c:set var="text" value="apple,banana,cherry"/>
    <c:forTokens var="token" delims="," items="${text}">
        <p>Token: <c:out value="${token}"/></p>
    </c:forTokens>

    <!-- Out Tag -->
    <h2>Out Tag</h2>
    <c:out value="Hello, JSTL!"/>

    <!-- Param Tag -->
    <h2>Param Tag</h2>
    <c:url var="myUrl" value="http://google.com">
        <c:param name="param1" value="value1"/>
    </c:url>
    <p>Generated URL: <c:out value="${myUrl}"/></p>

    <!-- Redirect Button -->
    <h2>Redirect Button</h2>
    <button onclick="redirectToGoogle()">Redirect to Google</button>

    <!-- Remove Tag -->
    <h2>Remove Tag</h2>
    <c:set var="attribute" value="This will be removed"/>
    <p>Before remove: <c:out value="${attribute}"/></p>
    <c:remove var="attribute"/>
    <p>After remove: <c:out value="${attribute}"/></p>

    <!-- Set Tag -->
    <h2>Set Tag</h2>
    <c:set var="message" value="This is a message"/>
    <p>Message: <c:out value="${message}"/></p>

    <!-- URL Tag -->
    <h2>URL Tag</h2>
    <c:url var="dynamicUrl" value="/dynamicServlet">
        <c:param name="userId" value="123"/>
    </c:url>
    <p>Dynamic URL: <c:out value="${dynamicUrl}"/></p>

    <!-- When Tag (part of choose) -->
    <h2>When Tag</h2>
    <c:set var="color" value="red"/>
    <c:choose>
        <c:when test="${color == 'red'}">
            <p>The color is red.</p>
        </c:when>
        <c:otherwise>
            <p>The color is not red.</p>
        </c:otherwise>
    </c:choose>
</body>
</html>
