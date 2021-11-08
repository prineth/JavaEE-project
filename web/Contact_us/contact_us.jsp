<%-- 
    Document   : contact_us
    Created on : Nov 7, 2021, 2:34:41 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Font Awesome -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
      rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
      rel="stylesheet"
    />
    <!-- MDB -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
      rel="stylesheet"
    />

    <title>My Hotel</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
          <a class="navbar-brand" href="../Home/home.jsp">Hotel Name</a>
        <button
          class="navbar-toggler"
          type="button"
          data-mdb-toggle="collapse"
          data-mdb-target="#navbarText"
          aria-controls="navbarText"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="../Home/home.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../Gallery/gallery.jsp">Gallery</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../Accomadation/accomadation.jsp">Accomadation</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="#">Contact Us</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="d-flex align-items-center">
        <form class="d-flex input-group w-auto">
          <input
            type="search"
            class="form-control rounded"
            placeholder="Search"
            aria-label="Search"
            aria-describedby="search-addon"
          />
          <span class="input-group-text border-0" id="search-addon">
            <i class="fas fa-search"></i>
          </span>
        </form>
      </div>
    </nav>
      
    <!--NAVBAR - END -->
      
    <div class="col-md-12 col-lg-10 col-lg-offset-1">
			<hr>

			<h1><span></span>Contact Us</h1>
    </div>
    <div class="section-page-content row">
	<div class="col-lg-10 col-lg-offset-1">
		<p>Are you planning a stay with us? Get in touch via phone or email to make your reservation today!</p>
<p>Stay connected with us to find out the latest buzz and special offers at The Kingsbury.</p>
	</div>
</div>

<div class="section-contact-form row">
	<div class="contact-form-wrapper col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3 col-lg-5 col-lg-offset-1">
		<form enctype="multipart/form-data" id="contact-us" class="dfb-form" method="post" action="https://www.thekingsburyhotel.com/contact-us/request-acknowledgement-contact-us.html" autocomplete="off"><div class="dfb-form-group form-group col-xs-12 "><label>Name <span class="text-danger">*</span></label><input aria-label="Name" type="hidden" name="attr_firstName" value="text@Name"><div class="input-group col-xs-12 response-field-text"><input aria-label="Name" type="text" id="firstName" name="firstName" class="form-control first-name"></div></div><div class="dfb-form-group form-group col-xs-12 "><label>Email <span class="text-danger">*</span></label><input aria-label="Email" type="hidden" name="attr_email" value="email@Email"><div class="input-group col-xs-12 response-field-email"><input aria-label="Email" type="email" name="email" id="email" class="form-control "></div></div><div class="dfb-form-group form-group col-xs-12 "><label>Phone No.</label><input aria-label="Phone No." type="hidden" name="attr_phone_no." value="text@Phone No."><div class="input-group col-xs-12 response-field-text"><input aria-label="Phone No." type="text" id="phone_no." name="phone_no." class="form-control "></div></div><div class="dfb-form-group form-group col-xs-12 "><label>Subject</label><input aria-label="Subject" type="hidden" name="attr_subject" value="text@Subject"><div class="input-group col-xs-12 response-field-text"><input aria-label="Subject" type="text" id="subject" name="subject" class="form-control "></div></div><div class="dfb-form-group form-group col-xs-12 "><label>Message</label><input aria-label="Message" type="hidden" name="attr_message" value="paragraph@Message"><div class="input-group col-xs-12 response-field-paragraph"><textarea aria-label="Message" id="message" name="message" class="form-control "></textarea></div></div><div class="dfb-form-group form-group col-xs-12 "><div class="input-group col-xs-12 is_required"><span class="text-danger">*</span> Required Fields</div><div class="input-group col-xs-12 response-field-captcha"><div id="g-recaptcha" class="g-recaptcha" style="transform:scale(0.95);transform-origin:0 0; "></div>

        <script type="text/javascript" src="https://www.google.com/recaptcha/api.js?onload=loadCaptcha&amp;hl=en&amp;render=explicit" async defer></script>
        <script type="text/javascript">
            var captchaContainer = null;
            var loadCaptcha = function() {
                captchaContainer = grecaptcha.render("g-recaptcha", {
                    "sitekey" : "6Le-OB8TAAAAADQ2Uy100bjOnea2lXXxrXZ6WbAk",
                    "callback" : function(response) {

                        $(".response-field-captcha small.help-block").hide();
                        if ( $("#validateBtn").length > 0 && $("#validateBtn").is(":disabled") ) {
                            //alert(response);
                            $("#validateBtn").prop("disabled", false);
                        }
                        
                    }
                });
            };
        </script>

        <small class="help-block">The captcha is required and cannot be empty</small></div></div><input type="hidden" name="fb_submit_id" value="2358">
            <div class="col-xs-12 msg-status-row">
            <div class="alert alert-info" role="alert"></div>
            </div>

            <div class="col-xs-12 fb-submit-row">
                <button type="submit" id="validateBtn" name="signup" class="btn btn-primary btn-sm">Submit</button>
                <button type="reset" id="resetBtn" class="btn btn-default btn-sm">Reset</button>
            </div>
            </form>

            <script type="text/javascript">

                $(window).load(function(){

                    $("#contact-us").bootstrapValidator({
                        
                        message: "This value is not valid",
                        excluded: [":disabled"],
                        feedbackIcons: {
                            valid: "glyphicon glyphicon-ok",
                            invalid: "glyphicon glyphicon-remove",
                            validating: "glyphicon glyphicon-refresh"
                        },
                        fields: {
                            firstName: {
                                                    group: ".response-field-text",
                                                    validators: {
                                                        notEmpty: {
                                                            message: "Name is required and cannot be empty"
                                                        }
                                                    }
                                                 },email: {
                                                        group: ".response-field-email",
                                                        validators: {
                                                            notEmpty: {
                                                                message: "Email is required and cannot be empty"
                                                            },
                                                            emailAddress: {
                                                                message: "Value is not a valid email address"
                                                            }
                                                        }
                                                    },
                        }

                    })
                    .on("success.form.bv", function(e) {
                        // Prevent form submission
                        e.preventDefault();var googleResponse = jQuery("#g-recaptcha-response").val();
                        if (!googleResponse) {
                            $(".response-field-captcha small.help-block").html("The captcha is required and cannot be empty").show();
                            $("#validateBtn").prop("disabled", true);
                        } else {
                            $(this).unbind( e );
                            $(".msg-status-row .alert").html("<strong>Successfully Validated!</strong> Please wait while processing your request.").removeClass("alert-danger").removeClass("alert-info").addClass("alert-success");
                            $(".msg-status-row .alert").slideDown();
                            $("#contact-us").submit();
                            return false;

                        }
                        

                    });

                    

                    //Manually Add recaptcha validation into boostrap validation
                    /*if( $("#g-recaptcha-response").length > 0 ){
                        $("#contact-us").bootstrapValidator("addField", "g-recaptcha-response", {
                            validators: {
                                group: ".response-field-captcha",
                                notEmpty: {
                                    message: "The captcha is required and cannot be empty"
                                }
                            }
                        });
                    }*/

                    $("#resetBtn").click(function() {
                        $("#contact-us").data("bootstrapValidator").resetForm(true);
                    });

                });
            
            </script>
        	</div>
	
				<div class="contact-details-wrapper col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3 col-lg-5 col-lg-offset-0">
									<ul>
													<li class="block">
								<span class="label">Corporate</span>
								<a href="tel:+94112421221" class="value">+94 112 421 221</a>
							</li>
													<li class="block">
								<span class="label">Hotel</span>
								<a href="tel:+94112421221" class="value">+94 112 421 221</a>
							</li>
													<li class="block">
								<span class="label">Fax</span>
								<a href="tel:+94112421221" class="value">+94 11 242 1221</a>
							</li>
													<li class="block">
								<span class="label">Address</span>
								<span class="value"> 48,   Janadhipathi Mawatha,  Colombo 01,</span>
							</li>
													<li class="block">
								<span class="label">Email</span>
																<span style="font-size: 14px; margin-bottom: 10px; display: inline-block;">Inquiries - </span><a href="mailto:info@thekingsburyhotel.com" class="value">info@thekingsburyhotel.com</a>
																								<br/>
								<span style="font-size: 14px; margin-bottom: 10px; display: inline-block;">Reservations - </span><a href="mailto:reservations@thekingsburyhotel.com" class="value">reservations@thekingsburyhotel.com</a>
															</li>
											</ul>
									<ul>
													<li class="block">
								<span class="label">Dining Service</span>
								<a href="tel:+94771087720" class="value">+94 77 108 7720 </a>
							</li>
													<li class="block">
								<span class="label">Spa Reservation</span>
								<a href="tel:+94112421221" class="value">+94 11 242 1221</a>
							</li>
											</ul>
							</div>
	</div>
    

    
  </body>
