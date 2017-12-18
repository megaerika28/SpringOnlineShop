<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <form method="POST" action="login.jsp">
            <center>
                <table border="1" width="30%" cellpadding="3">
                    <thead>
                        <tr>
                            <th colspan="2"> Login Here</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> Email </td>
                            <td><input type="text" name="email" value=""/> </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="password" value="" /></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Login"/></td>
                            <td><input type="reset" value="Reset"/></td>
                        </tr>
                        <tr>
                            <td colspan="2"> yet Not Registered!! <a href="registrasi.js">Register here</a></td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>
