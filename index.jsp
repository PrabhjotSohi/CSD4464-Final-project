<%-- 
    Document   : index
    Created on : Apr 3, 2019, 4:58:58 PM
    Author     : 696338
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:query var="subjects" dataSource="jdbc/cestar">
        SELECT subject_id ,name  FROM subject
    </sql:query>
        
    <table border="1">
        <!-- column headers -->
        <tr>
        <c:forEach var="columnName" items="${subjects.columnNames}">
            <th><c:out value="${columnName}"/></th>
        </c:forEach>
    </tr>
    <!-- column data -->
    <c:forEach var="row" items="${subjects.rowsByIndex}">
        <tr>
        <c:forEach var="column" items="${row}">
            <td><c:out value="${column}"/></td>
        </c:forEach>
        </tr>
    </c:forEach>
</table>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" herf="style.css">
        <title>CESTAR Homepage</title>
    </head>
    <body>
        <h1>Welcome to CESTAR  !</h1>
        <table border="0">
            <thead>
                <tr>
                    <th> CESTAR </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> To view the contact details of a CESTAR, Select a Subject below:</td>
                </tr>
                <tr>
                    <td><form action="response.jsp">
                            <strong> Select a subject:</strong>
                            <select name="subject_id">
                                <c:forEach var="row" items ="${subjects.rowsByIndex}">
                                    <c:forEach var="column" items="${row}">
                                <option value="<c:out value="${column}"/>"><c:out value="${column}"/></option>
                                </c:forEach>
                                </c:forEach>
                                
                            </select>
                            <input type="submit" value="submit" name="submit" />
                        </form></td>
                </tr>

            </tbody>
        </table>


    </body>
</html>
