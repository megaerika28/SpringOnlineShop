<%-- 
    Document   : welcome
    Created on : Dec 14, 2017, 11:41:14 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <jsp:include page="head.jsp"/>
            <div class="container">
             <h1>${message}</h1>
             <a href="shop/all">Lihat Customer kami</a>
             
    </body>
</html>
