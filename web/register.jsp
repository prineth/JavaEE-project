<%@include file="navBar.jsp" %>
<div class="container justify-content-center">    
<form method="post" action="./register">
            
                       <%
            
      String msg=(String)request.getAttribute("messageOne");
           if(msg==null)
           {
                    msg="";
           }
            
            %>
            
            <p>First Name</p>
        <input type="text" name="fname" /><br/>
         <p>Last Name</p>
        <input type="text" name="lname" /><br/>
         <p>Email</p>
        <input type="email" name="email" /><br/>
         <p>Password</p>
        <input type="password" name="pass" /><br/>
        <p> Number</p>
       <input type="number" name="phone" /><br/>
        
       <br>
         <button type="submit" class="btn btn-primary" value="register">Sign Up</button>
        
         <p style="color: red;"><%=msg%></p> 

        </form>
       </div>    
  
    <%@ include file="footer.jsp"%>