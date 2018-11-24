<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css"  />
<link rel="stylesheet" href="../../css/Style.css" type="text/css"  />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Inserare Verificare </title>
</head>

 
   
   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/proiectaibd"
         user = "root"  password = ""/>
         <sql:update dataSource = "${snapshot}" var = "result">
         INSERT INTO Verificare VALUES (  <%= request.getParameter("codv")%>,   <%= request.getParameter("codp")%>, <%= request.getParameter("codm")%>, <%= request.getParameter("codo")%>, "<%= request.getParameter("orav")%>", "<%= request.getParameter("orap")%>");
      </sql:update>
      Insert Succesful!
       <br />
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
      <div class="content">
      <form action = "../" method ="GET">
     			<input type = "submit" value = "Back" />
     			</form>
      </div>
      </body>
      </html>