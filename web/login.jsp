
<head>
      <title>Disable Browser Back Button</title>
      <script src = "http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src = "http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
</head>
<script>
      $(document).ready(function() {
         function disablePrev() { window.history.forward() }
         window.onload = disablePrev();
         window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
      });
 </script>

<%@include file="navBar.jsp" %>


<!------------------------------------------------------------------------->
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="login-form bg-light mt-4 p-4">
                <form method="post" action="./login" class="row g-3">
                    <% String rd = (String) request.getAttribute("messageTwo");
                        if (rd == null) {
                            rd = "";
                        }
                    %>
                    <h4 style="text-align: center">Welcome Back</h4>
                    <div class="col-12">
                        <label>Email</label>
                        <input type="text" name="name" class="form-control" placeholder="Username">
                    </div>
                    <div class="col-12">
                        <label>Password</label>
                        <input type="password" name="pass" class="form-control" placeholder="Password"><br>
                    </div>

                    <div class="col-12">
                        <button type="submit" class="btn btn-block text-light" style="background-color: #B69101;">Login</button>
                    </div>

                </form><br>
                <p>Didn't have account yet? <a href="register.jsp">Register Now</a></p>
                <p style="color: red;"><%=rd%></p>
            </div>
        </div>
    </div>
</div>
<br>

<%@ include file="footer.jsp"%>
