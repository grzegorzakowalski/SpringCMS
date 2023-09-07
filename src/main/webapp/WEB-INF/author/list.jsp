<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <table>
      <thead>
      <tr>
        <th>Id</th>
        <th>Imię</th>
        <th>Nazwisko</th>
        <th>Akcja</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${authorList}" var="author">
      <tr>
        <td>${author.id}</td>
        <td>${author.firstName}</td>
        <td>${author.lastName}</td>
        <td>
          <a href="<c:url value="/author/delete?id=${author.id}"></c:url>"><button class="trash-button">🗑️</button></a>
          <a href="<c:url value="/author/update?id=${author.id}"></c:url>"><button class="arrow-button">⬆️</button></a>
        </td>
      </tr>
      </c:forEach>

      </tbody>
    </table>
    <button class="add-button"><a href="<c:url value="/author/add"></c:url>">Dodaj autora</a></button>
  </main>
  <aside class="sidebar">
    <h2 STYLE="text-align: center">Menu</h2>
    <%@include file="/WEB-INF/side-menu.jsp"%>
  </aside>

</div>
</body>
</html>