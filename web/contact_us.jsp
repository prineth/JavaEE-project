<%@include file="navBar.jsp" %>


<div class="container-fluid">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="login-form bg-light mt-4 p-4">
                <form method="post" action="./contactUs" class="row g-3">
                    <% String rd = (String) request.getAttribute("messageTwo");
                        if (rd == null) {
                            rd = "";
                        }
                    %>
                    <h4 style="text-align: center">Contact Us</h4>
                    <div class="col-12">
                        <label>Name</label>
                        <input type="text" name="name" class="form-control" placeholder="Name">
                    </div>
                    <div class="col-12">
                        <label>Email address</label>
                        <input type="text" name="email" class="form-control" placeholder="Email address">
                    </div>
                    <div class="col-12">
                        <label>Subject</label>
                        <input type="text" name="subject" class="form-control" placeholder="Subject">
                    </div>
                    <div class="col-12">
                        <label>Message</label>
                        <textarea type="text" name="message" class="form-control" placeholder="Message"></textarea>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-block text-light" style="background-color: #B69101;">Send</button>
                    </div>

                </form><br>
               
                <p style="color: red;"><%=rd%></p>
            </div>
        </div>
    </div>
</div>
<br>




<%@ include file="footer.jsp"%>
