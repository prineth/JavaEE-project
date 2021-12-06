<%@include file="navBar.jsp" %>
        <form method="post" action="./register">
        Name:<input type="text" name="name" /><br/>
        Email ID:<input type="text" name="email" /><br/>
        Password:<input type="text" name="pass" /><br/>
        <input type="submit" value="register" />
        </form>
        
        <form>
  <!-- Name input -->
  <div class="form-outline mb-4">
    <input type="text" id="form5Example1" class="form-control" />
    <label class="form-label" for="form5Example1">First Name</label>
  </div>
  
  <!-- Name input -->
  <div class="form-outline mb-4">
    <input type="text" id="form5Example1" class="form-control" />
    <label class="form-label" for="form5Example1">Last Name</label>
  </div>

  <!-- Email input -->
  <div class="form-outline mb-4">
    <input type="email" id="form5Example2" class="form-control" />
    <label class="form-label" for="form5Example2">Email address</label>
  </div>
  
   <!-- Number input -->
  <div class="form-outline mb-4">
    <input type="number" id="form6Example6" class="form-control" />
    <label class="form-label" for="form6Example6">Phone</label>
  </div>
   
    <!-- Password input -->
      <div class="form-outline mb-4">
        <input type="password" id="loginPassword" class="form-control" />
        <label class="form-label" for="loginPassword">Password</label>
      </div>
  
  

 

  <!-- Submit button -->
  <button type="submit" class="btn btn-primary btn-block mb-4">Sign Up</button>
</form>
    <%@ include file="footer.jsp"%>