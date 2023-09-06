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
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Akcja</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${categoryList}" var="category">
      <tr>
        <td>${category.id}</td>
        <td>${category.name}</td>
        <td>${category.description}</td>
        <td> </td>
      </tr>
      </c:forEach>

      </tbody>
    </table>

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