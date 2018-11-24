<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>SELECT Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/proiectaibd"
         user = "root"  password = ""/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from personal where codo = "<%= request.getParameter("ofiter")%>" or nume = "<%= request.getParameter("ofiter")%>" or pren = "<%= request.getParameter("ofiter")%>" or rang = "<%= request.getParameter("ofiter")%>"
      </sql:query>
 
     <table border = "1" width = "100%">
         <tr>
            <th>Codo</th>
            <th>Nume</th>
            <th>Prenume</th>
            <th>Rang</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.codo}"/></td>
               <td><c:out value = "${row.nume}"/></td>
               <td><c:out value = "${row.pren}"/></td>
               <td><c:out value = "${row.rang}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>