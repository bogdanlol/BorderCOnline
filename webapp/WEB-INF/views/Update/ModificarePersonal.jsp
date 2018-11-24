<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css"  />
<link rel="stylesheet" href="../../../css/Style.css" type="text/css"  />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Modificare Personal </title>

  
     
   </head>
   
   <body>
   			
 
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
   			<form action="UpdatePersonal.jsp" method="GET">

        <label for="CodO">Cod Ofiter Mod(): </label>

            <input type="text" name="codo1">
   		      <div class="cautare">
   			 <form action = "UpdatePersonal.jsp" method = "GET">
         Cod Ofiter: <input type = "text" name = "codo">
         <br />
         Nume: <input type = "text" name = "nume" />
           <br />
         Prenume: <input type = "text" name = "pren" />
         <br />
           Rang: <input type = "text" name = "rang" />
         <br />
         <input type = "submit" value = "Modificare" />
         <br />
      </form>
      <br />
      <form action = "../" method ="GET">
     			<input type = "submit" value = "Back" />
     			</form>
     			
   </div>
     	
     			
     			
      
      
       </body>
</html>