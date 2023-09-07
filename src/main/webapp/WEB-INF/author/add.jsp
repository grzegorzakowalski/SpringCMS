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
      <form:form modelAttribute="author" method="post">
        <div class="form-field">
          <h2 style="color: #009900;">Dodaj kategorię</h2>
          <label>Nazwa:</label>
          <form:input path="firstName"></form:input>
        </div>
        <div class="form-field">
          <label>Opis:</label>
          <form:input path="lastName"></form:input>
        </div>
        <button type="submit" class="add-button">Dodaj</button>
      </form:form>
    </div>
  </main>
  <aside class="sidebar">
    <h2 STYLE="text-align: center">Menu</h2>
    <%@include file="/WEB-INF/side-menu.jsp"%>
  </aside>

</div>
</body>
</html>