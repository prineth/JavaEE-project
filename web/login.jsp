



<%@include file="navBar.jsp" %>

        <form method="post" action="./login">
                             <%
            
       
      String rd=(String)request.getAttribute("messageTwo");
           if(rd==null)
           {
                    rd="";
           }
            %>
        Email:<input type="text" name="name" /><br/>
        Password:<input type="password" name="pass" /><br/>
        <input type="submit" value="login" /><br/>
          <p style="color: red;"><%=rd%></p> 
        <a href="register.jsp"> Click here to register </a>

      </form>
       
    <%@ include file="footer.jsp"%>
