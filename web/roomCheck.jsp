<%-- 
    Document   : roomCheck
    Created on : Jan 3, 2022, 2:28:45 AM
    Author     : Janidu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="navBar.jsp" %>
        <div>
        <form method="post" action="">
        Room Type<input type="text" name="name" /><br/>
        Nights<input type="number" name="pass" /><br/>
        Rooms<input type="number" name="pass" /><br/>
        No of Guest<input type="password" name="pass" /><br/>
        <input type="submit" value="login" /><br/>
           
        <a href="register.jsp"> Click here to register </a>

        </form>
       </div>
       
    <%@ include file="footer.jsp"%>

    </body>
</html>
