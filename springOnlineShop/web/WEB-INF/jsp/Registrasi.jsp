<%-- 
    Document   : Registrasi
    Created on : Dec 14, 2017, 11:26:46 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration here</title>
        <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"> 
    </head>
    <body>
        <jsp:include page="head.jsp"/>
        <div class="container">
            <div class="card">
                <div class="card-header">
                    Registration Form
                </div>
                
        <form method="POST" action="register/save" modelAttribute="Registration">
            <center>
                <table border="1" width="30%" cellpandding="5">
                    <thead>
                        <tr>
                            <th colspan="2"> Enter Information Here</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td> Password</td>
                        <td><input type="password" name="password" value=""/></td>
                    </tr>
                    <tr>
                        <td>username</td>
                        <td><input type="text" name="username" value=""/></td>
                      </tr>
                      <tr>
                        <td>email</td>
                        <td><input type="text" name="email" value=""/></td>
                      </tr>
                      <tr>
                          <td>Handphone</td>
                        <td><input type="text" name="noHp" value=""/></td>
                      </tr>
                      <tr>
                          <td>Name</td>
                        <td><input type="text" name="name" value=""/></td>
                      </tr>
                      <tr>
                          <td><input type="submit" value="Submit"/></td>
                          <td<input type="reset" value="Reset"/></td>
                      </tr>
                      <tr>
                        <td colspan="2"> Already Registered!! <a href="index.jsp">Login here</a></td>
                    </tr>
                </tbody>
             
            </center>
        </form>
            </div>
        </div>
    </body>
</html>
