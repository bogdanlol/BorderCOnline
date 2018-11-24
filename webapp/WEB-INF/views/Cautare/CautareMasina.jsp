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
         SELECT * from masina where codm ="<%= request.getParameter("masina")%>" or numar = "<%= request.getParameter("masina")%>" or culoare = "<%= request.getParameter("masina")%>"
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>CodM</th>
            <th>Numar</th>
            <th>Culoare</th>
           
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.codm}"/></td>
               <td><c:out value = "${row.numar}"/></td>
               <td><c:out value = "${row.culoare}"/></td>
              
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>