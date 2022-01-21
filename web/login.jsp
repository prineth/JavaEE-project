



<%@include file="navBar.jsp" %>
  <div class="container justify-content-center">
        <form method="post" action="./login">
                             <%
            
       
      String rd=(String)request.getAttribute("messageTwo");
           if(rd==null)
           {
                    rd="";
           }
            %>
          
                <p>Email</p>
      <input type="text" name="name" /><br/>
      <p>Password</p>
        <input type="password" name="pass" /><br/>
        <br/>
        <p>Click here to <a href="register.jsp">register </a></p> 
        <button type="submit" class="btn btn-primary" value="login">Log In</button>
          <p style="color: red;"><%=rd%></p> 
       

      </form>
       </div>
    <%@ include file="footer.jsp"%>
