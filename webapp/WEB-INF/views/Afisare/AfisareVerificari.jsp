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
      <title>Afisare Verificare</title>
   </head>

   <body>
      <div class = "cautare">
   
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/proiectaibd"
         user = "root"  password = ""/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from verificare;
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
      </div>
  <div class="content">
      <form action = "../" method ="GET">
     			<input type = "submit" value = "Back" />
     			</form>
      </div>
   </body>
</html>