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
         SELECT * from verificare where codv = "<%= request.getParameter("verificare")%>" or codp = "<%= request.getParameter("verificare")%>" or codm = "<%= request.getParameter("verificare")%>" or codo = "<%= request.getParameter("verificare")%>" or orav = "<%= request.getParameter("verificare")%>" or orap = "<%= request.getParameter("verificare")%>"
      </sql:query>
 
     <table border = "1" width = "100%">
         <tr>
            <th>Cod Verificare</th>
            <th>Cod Persoana</th>
            <th>Cod Masina</th>
            <th>Cod Ofiter</th>
            <th>Ora Venirii</th>
            <th>Ora Plecarii</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.codv}"/></td>
               <td><c:out value = "${row.codp}"/></td>
               <td><c:out value = "${row.codm}"/></td>
               <td><c:out value = "${row.codo}"/></td>
               <td><c:out value = "${row.orav}"/></td>
               <td><c:out value = "${row.orap}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>