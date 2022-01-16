<%@include file="navBar.jsp" %>
        <form method="post" action="./register">
            
                       <%
            
      String msg=(String)request.getAttribute("messageOne");
           if(msg==null)
           {
                    msg="";
           }
            
            %>
            
            
        First Name:<input type="text" name="fname" /><br/>
        Last Name:<input type="text" name="lname" /><br/>
        Email:<input type="email" name="email" /><br/>
        Password:<input type="password" name="pass" /><br/>
        Number:<input type="number" name="phone" /><br/>
        <input type="submit" value="register" />
        
         <p style="color: red;"><%=msg%></p> 

        </form>
        
  
    <%@ include file="footer.jsp"%>