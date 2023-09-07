<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: kowal
  Date: 06.09.2023
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>${siteName}</title>
  <%@include file="/WEB-INF/styles.jsp" %>
</head>
<body>
<header>
  <h1>${siteName}</h1>
</header>
<div class="container">
  <main class="articles">
    <div class="form-container">
      <form method="post">
        <input type="hidden" name="id" value="${category.id}">
        <h2 style="position: relative; right: 40%">Czy na pewno chcesz usunąć ${category.name}?</h2>
        <button class="trash-button" type="submit">Tak</button>
        <a href="<c:url value="/category/list"></c:url>"><button class="arrow-button" type="button">Nie</button></a>
      </form>
      </div>
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