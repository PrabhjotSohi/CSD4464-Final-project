
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
                    <td>  Welcome to the StarDataBase! you are gateway to your cestar college Schedule!!!</td>
                </tr>
                <tr>
                    <td><form action="response.jsp">
                            <strong> Select a subject:</strong>
                            <select name="subject_id">
                                <c:forEach var="row" items ="${subjects.rowsByIndex}">
                                    <c:forEach var="column" items="${row}">
                                <option value="<c:out value="${column}""><c:out value="${column}"/></option>
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
