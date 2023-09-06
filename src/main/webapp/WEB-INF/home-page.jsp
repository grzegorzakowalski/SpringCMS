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
    <title>Strona Startowa</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #009900;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        h1 {
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            display: flex;
        }
        .articles {
            flex: 1;
            display: flex;
            flex-wrap: wrap;
        }
        .article {
            flex: 1;
            background-color: #fff;
            margin: 10px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .sidebar {
            flex-basis: 250px;
            background-color: #009900;
            color: #fff;
            padding: 20px;
            border-radius: 5px;
            position: fixed;
            top: 100px;
            bottom: 20px;
            right: 20px;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        li {
            margin-bottom: 10px;
        }
        .menu-button {
            display: block;
            margin: 10px auto;
            padding: 10px 20px;
            background-color: #005500;
            color: #fff;
            text-decoration: none;
            text-align: center;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .menu-button:hover {
            color: #009900;
        }
    </style>
</head>
<body>
<header>
    <h1>Strona Startowa</h1>
</header>
<div class="container">
    <main class="articles">
        <article class="article ">
            <h2>Artykuł 1</h2>
            <p>Treść artykułu 1...</p>
        </article><br>
        <article class="article ">
            <h2>Artykuł 2</h2>
            <p>Treść artykułu 2...</p>
        </article><br>
        <article class="article ">
            <h2>Artykuł 3</h2>
            <p>Treść artykułu 3...</p>
        </article>
        <article class="article">
            <h2>Artykuł 4</h2>
            <p>Treść artykułu 4...</p>
        </article>
        <article class="article">
            <h2>Artykuł 5</h2>
            <p>Treść artykułu 5...</p>
        </article>
    </main>
    <aside class="sidebar">
        <h2 STYLE="text-align: center">Menu</h2>
        <ul>
            <li><button class="menu-button" href="<c:url value="/"></c:url> ">Strona główna</button></li>
        </ul>
    </aside>
</div>
</body>
</html>
