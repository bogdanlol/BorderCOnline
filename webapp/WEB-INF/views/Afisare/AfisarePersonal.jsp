<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
   <head>
      <title>Afisare Personal</title>
   </head>

   <body>
      <div class = "cautare">
   
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/proiectaibd"
         user = "root"  password = ""/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from personal;
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
      </div>
  <div class="content">
      <form action = "../" method ="GET">
     			<input type = "submit" value = "Back" />
     			</form>
      </div>
   </body>
</html>