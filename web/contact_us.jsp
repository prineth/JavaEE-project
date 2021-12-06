<%@include file="navBar.jsp" %>
      
      <div class="container">
          <div class="frms" style="padding-top: 100px">
        <form id="contact-form">
  <h2>Contact us</h2>

  <!-- Name input -->
  <div class="form-outline mb-4">
    <input type="text" id="name" name="name" class="form-control" />
    <label class="form-label" for="name">Name</label>
  </div>

  <!-- Email input -->
  <div class="form-outline mb-4">
    <input type="email" id="email" name="email" class="form-control" />
    <label class="form-label" for="email">Email address</label>
  </div>

  <!-- Subject input -->
  <div class="form-outline mb-4">
    <input type="text" id="subject" name="subject" class="form-control" />
    <label class="form-label" for="subject">Subject</label>
  </div>

  <!-- Message input -->
  <div class="form-outline mb-4">
    <textarea class="form-control" id="message" name="message" rows="4"></textarea>
    <label class="form-label" for="message">Message</label>
  </div>

  <!-- Mail copy -->
  <div class="form-check">
    <input type="checkbox" class="form-check-input" name="mailCopy" id="mailCopy" value="1">
    <label for="mailCopy" class="form-check-label">Send me copy</label>
  </div>

  <!-- Submit button -->
  <button id="submit-form" type="submit" class="btn btn-primary btn-block mb-4">
    Send
  </button>
</form>
              </div>
      </div>
	
          <section class="container">
        <h3 class="pt-4 pb-2"></h3>
        <form>
            <div class="row form-group">
                <label for="date" class="col-sm-1 col-form-label">Date</label>
                <div class="col-sm-4">
                    <div class="input-group date" id="datepicker">
                        <input type="text" class="form-control">
                        <span class="input-group-append">
                            <span class="input-group-text bg-white d-block">
                                <i class="fa fa-calendar"></i>
                            </span>
                        </span>
                    </div>
                </div>
            </div>
        </form>
    </section>

    <script type="text/javascript">
        $(function() {
            $('#datepicker').datepicker();
        });
    </script>
    
    <%@ include file="footer.jsp"%>
