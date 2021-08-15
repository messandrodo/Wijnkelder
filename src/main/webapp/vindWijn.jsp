<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vind Wijn | Wijnkelder</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <jsp:include page="header.jsp">
        <jsp:param name="current" value="VindWijn"/>
    </jsp:include>
    <main>
        <h2>zoek wijn</h2>

        <c:if test="${not empty errors}">
            <div id="error">
                <ul>
                    <c:forEach items="${errors}" var="error">
                        <li>${error}</li>
                    </c:forEach>
                </ul>
            </div>
        </c:if>

        <p>ben je geïntresseert in de wijn van een bepaald jaar? geef dan hier jouw jaar in.</p>
        <form action="Servlet?command=zoek" method="GET" novalidate>
            <label for="jaartal">Gezochte jaartal:</label>
            <input class="inputNaastLabel" id="jaartal" name="jaartal" type="number" value="${jaartal}"> <br><br>
            <input type="hidden" name="command" value="zoek">
            <input type="submit" value="Zoek" id="zoek">
        </form>

    </main>
</body>
</html>