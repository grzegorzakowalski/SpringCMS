<%--
  Created by IntelliJ IDEA.
  User: kowal
  Date: 06.09.2023
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  time {
      font-size: 0.8em; /* Rozmiar tekstu mniejszy niż standardowy */
      opacity: 0.7; /* Prześwitujący efekt */
      display: block; /* Każda data powinna być na nowej linii */
      text-align: right; /* Wyrównanie do prawej strony */
      margin-top: 10px; /* Odstęp od treści artykułu */
  }
  table {
      border-collapse: collapse;
      width: 100%;
      background-color: #e0f0e0;
  }

  th, td {
      border: 1px solid #009900;
      padding: 8px;
      text-align: left;
  }

  th {
      background-color: #009900;
      color: white;
  }

  tr:nth-child(even) {
      background-color: #c0e0c0;
  }

  tr:nth-child(odd) {
      background-color: #a0d0a0;
  }
  a {
      text-decoration: none;
      color: white;
      transition: background-color 0.3s ease;
  }
  a:hover {
      color: #009900;
      cursor: pointer;
  }
</style>
