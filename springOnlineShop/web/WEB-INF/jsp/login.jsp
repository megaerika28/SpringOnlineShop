<%-- 
    Document   : login
    Created on : Dec 14, 2017, 6:00:06 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Online Shopping</title>
        <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="head.jsp"/>
        <div class="container">
            <b>${errMsg}</b>
            <div class="card">
                <div class="card-header">
                    Form Masuk
                </div>
                <div class="card-body">
                    
                    <form:form action="${pageContext.request.contextPath}/login/check" modelAttribute="loginBean" method="POST">
                        <table>
                            <tr><td><form:label path="email">Email</form:label></td>
                                <td><form:input path="email"/></td></tr>
                            <tr><td><form:label path="password"> Password</form:label></td>
                                <td><form:password path="password"/></td></tr>
                            <tr><td></td><td><form:button name="submitButton" value="Submit">Login</form:button></td></tr>
                        </table>
                    </form:form>
                </div>
            </div>
                
                
            <!--form method="POST" action="${pageContext.request.contextPath}/login/check" modelAttribute="loginBean">
                <center>
                    <table border="1" width="30%" cellpadding="3">
                        <thead>
                            <tr>
                                <th colspan="2"> Login Here </th>
                            </tr>
                        </thead>
                    </tbody>
                    
                    <tr> 
                        <td>Email</td>
                        <td><input type="text" name="email" value=""/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value=""/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit"/></td>
                        <td><input type="reset" value="Reset"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"> Yet Not Registered!! <a href="register"> Register here </a></td>
                    </tr>
        </tbody>
        
                    </table>
                </center>
            </form-->
        </body>
</html>
