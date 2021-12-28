<%@include file="navBar.jsp" %>
        <form method="post" action="./login">
        Email ID:<input type="text" name="email" /><br/>
        Password:<input type="text" name="pass" /><br/>
        <input type="submit" value="login" /><br/>
        <a href="register.jsp"> Click here to register </a>
        
        
      </form>
        <form method="post" action="./login">
        <!-- Email input -->
        <div class="form-outline col-mb-4">
          
          <input type="text" name="email" class="form-control"/>
          <label class="form-label" for="form1Example1">Email address</label>
        </div>
      
        <!-- Password input -->
        <div class="form-outline mb-4">
          
          <input type="text" name="pass" class="form-control"/>
          <label class="form-label" for="form1Example2">Password</label>
        </div>
      
        <!-- 2 column grid layout for inline styling -->
        <div class="row mb-4">
          
      
          <div class="col">
            <!-- Simple link -->
            <a href="register.jsp"> Click here to register </a>
          </div>
        </div>
      
        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block">Sign in</button>
        </form>
    <%@ include file="footer.jsp"%>
