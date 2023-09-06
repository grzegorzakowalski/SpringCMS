<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kowal
  Date: 05.09.2023
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${siteName}</title>
    <%@include file="styles.jsp" %>
</head>
<body>
<header>
    <h1>${siteName}</h1>
</header>
<div class="container">
<main class="articles">
    <c:forEach items="${articleList}" var="article">
        <article class="article ">
            <h2>${article.title}</h2>
            <p>${article.content}</p>
            <time datetime="${article.created}">Utworzono:${article.created}</time>
        </article><br>
    </c:forEach>

</main>
    <aside class="sidebar">
        <h2 STYLE="text-align: center">Menu</h2>
        <ul>
            <li><button class="menu-button"><a href="<c:url value="/"></c:url>">Strona główna</a></button></li>
            <li><button class="menu-button"><a href="<c:url value="/category/list"></c:url>">Lista kategorii</a></button></li>
        </ul>
    </aside>

</div>
</body>
</html>



