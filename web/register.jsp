<%@include file="navBar.jsp" %>
        <form method="post" action="./register">
            
                       <%
            
       
      String rd=(String)request.getAttribute("messageOne");
           if(rd==null)
           {
                    rd="";
           }
           
         String rt=(String)request.getAttribute("messageTwo");
           if(rt==null)
           {
                    rt="";
           }
       
            
            
            
            %>
            
            
        First Name:<input type="text" name="fname" /><br/>
        Last Name:<input type="text" name="lname" /><br/>
        Email:<input type="email" name="email" /><br/>
        Password:<input type="password" name="pass" /><br/>
        Number:<input type="number" name="phone" /><br/>
        <input type="submit" value="register" />
        
         <p style="color: red;"><%=rd%></p> 
                 <p style="color: red;"> <%=rt%></p>
        </form>
        
  
    <%@ include file="footer.jsp"%>