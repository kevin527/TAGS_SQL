<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%-- 
    Document   : index
    Created on : 26/03/2015, 08:22:33 PM
    Author     : kevin527
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="stylecss.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>TAG SQL QUERY</h1>
         <sql:query var="allRows" dataSource="jdbc/sample">
        SELECT NAME, CITY, STATE FROM CUSTOMER
    </sql:query>
        <table border="1">
            <thead>
                <tr>
                    <th>NOMBRE</th>
                    <th>UBICACION</th>
                    <th>ESTADO</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="currentRow"
                       items="${allRows.rows}">
                <tr>
                    <td>${currentRow.name}</td>
                    <td>${currentRow.city}</td>
                    <td>${currentRow.state}</td>
                </tr>
            </c:forEach>
                
            </tbody>
        </table>
    </body>
</html>
