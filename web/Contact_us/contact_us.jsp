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
    
    <link rel="stylesheet" href="contactus.css">

    
    <title>My Hotel</title>
  </head>
  <body>
    
      <%@ include file="../Navbar/navBar.jsp"%>
      
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
	
    
  </body>
