<%@include file="navBar.jsp" %>
<!--<div class="container justify-content-center">    
    <form method="post" action="./register">



        <p>First Name</p>
        <input type="text" name="fname" /><br/>
        <p>Last Name</p>
        <input type="text" name="lname" /><br/>
        <p>Email</p>
        <input type="email" name="email" /><br/>
        <p>Password</p>
        <input type="password" name="pass" /><br/>
        <p> Contact</p>
        <input type="number" name="phone" /><br/>

        <br>
        <button type="submit" class="btn btn-primary" value="register">Sign Up</button>

        

    </form>
</div>    -->



<!------------------------------->
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="login-form bg-light mt-4 p-4">
                <form method="post" action="./register" class="row g-3">
                    <% String msg = (String) request.getAttribute("messageOne");
                        if (msg == null) {
                            msg = "";
                        }

                    %>

                    <h4 style="text-align: center">Register</h4>
                    <div class="col-12">
                        <label>First Name</label>
                        <input type="text" name="fname" class="form-control" placeholder="First Name">
                    </div>
                    <div class="col-12">
                        <label>Last Name</label>
                        <input type="text" name="lname" class="form-control" placeholder="Last Name">
                    </div>
                    <div class="col-12">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control" placeholder="Email">
                    </div>

                    <div class="col-12">
                        <label>Contact</label>
                        <input type="number" name="phone" class="form-control" placeholder="Contact">
                    </div>
                    <div class="col-12">
                        <label>Password</label>
                        <input type="password" name="pass" class="form-control" placeholder="Password">
                    </div>
                    <div class="col-12">
                        <label>Re-enter Password</label>
                        <input type="text" name="rePass" class="form-control" placeholder="rePassword"><br>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-block text-light" style="background-color: #B69101;">Register</button>
                    </div>

                </form><br>
                <p>Already have an account? <a href="login.jsp">Login Now</a></p>
                 <p style="color: red;"><%=msg%></p> 
            </div>
        </div>
    </div>
</div>
<br>

<%@ include file="footer.jsp"%>