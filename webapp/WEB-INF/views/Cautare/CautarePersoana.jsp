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
         SELECT * from persoana where codp = "<%= request.getParameter("persoana")%>" or nume = "<%= request.getParameter("persoana")%>" or pren = "<%= request.getParameter("persoana")%>" or varsta = "<%= request.getParameter("persoana")%>" or cnp = "<%= request.getParameter("persoana")%>" or codm = "<%= request.getParameter("persoana")%>"
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>CodP</th>
            <th>Nume</th>
            <th>Prenume</th>
            <th>Varsta</th>
            <th>CNP</th>
            <th>CodM</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.codp}"/></td>
               <td><c:out value = "${row.nume}"/></td>
               <td><c:out value = "${row.pren}"/></td>
               <td><c:out value = "${row.varsta}"/></td>
               <td><c:out value = "${row.cnp}"/></td>
               <td><c:out value = "${row.codm}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>