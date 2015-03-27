<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : insert
    Created on : 26/03/2015, 08:41:08 PM
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
        <h1>TAG SQL INSERTAR</h1>
    <sql:update var="insertar" dataSource="jdbc/sample">
        INSERT INTO customer (customer_id, name, discount_code,zip)
        VALUES (((select max(customer_id)from customer)+1),'etiquetas jstl, SCN','M','95117')
    </sql:update>
        
        <sql:query var="result" dataSource="jdbc/sample">
            SELECT customer_id, name, discount_code, zip FROM CUSTOMER
            
        </sql:query>
    
        <table border="1">
            <!-- column headers -->
            <tr>
            <c:forEach var="columnName" items="${result.columnNames}">
                <th><c:out value="${columnName}"/></th>
            </c:forEach>
        </tr>
        <!-- column data -->
        <c:forEach var="row" items="${result.rowsByIndex}">
            <tr>
            <c:forEach var="column" items="${row}">
                <td><c:out value="${column}"/></td>
            </c:forEach>
            </tr>
        </c:forEach>
    </table> 
    </body>
</html>
