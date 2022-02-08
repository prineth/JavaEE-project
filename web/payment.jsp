<%-- 
    Document   : payment
    Created on : Jan 20, 2022, 11:17:32 AM
    Author     : hirun
--%>
   <%
           response.setHeader("Cache-control","no-cache, no-store, must-revalidate");
           response.setHeader("pragma", "no-cache");
           response.setHeader("Expires", "0");
            
           if(session.getAttribute("userid")== null){
               response.sendRedirect("login.jsp");
           }
            
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    </head>
    <body>
         <% 
       
    float priceall =(Float)request.getAttribute("roomsprice"); 
    
    
    
    float dollars = priceall/200;
   
   %>     
 
   <h2 style="text-align: center;margin-top: 100px">Room Price : RS <%=priceall%></h2>
   <h3 style="text-align: center">discount : RS 0.00</h3>
   <h1 style="text-align: center">Total : RS <%=priceall%></h1>
      
     
   <br>
   <br>
        
        <div id="smart-button-container">
      <div style="text-align: center;">
        <div id="paypal-button-container"></div>
      </div>
    </div>
  <script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>
  <script>
    function initPayPalButton() {
      paypal.Buttons({
        style: {
          shape: 'pill',
          color: 'gold',
          layout: 'horizontal',
          label: 'paypal',
          
        },

        createOrder: function(data, actions) {
          return actions.order.create({
              purchase_units: [{"amount":{"currency_code":"USD","value":<%=dollars%>}}]
          });
        },

        onApprove: function(data, actions) {
          return actions.order.capture().then(function(orderData) {
            
            // Full available details
            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

            // Show a success message within this page, e.g.
            const element = document.getElementById('paypal-button-container');
            element.innerHTML = '';
             element.innerHTML = '<h3>Payment Successfull</h3>';
            element.innerHTML = '<h3>Thank you for your payment!</h3>';
           

            // Or go to another URL: 
             
           
          });
        },

        onError: function(err) {
          console.log(err);
        }
      }).render('#paypal-button-container');
    }
    initPayPalButton();
  </script>
  
  
  
  
  <div id="smart-button-container">
      <div style="text-align: center;">
        <div id="paypal-button-container"></div>
      </div>
    </div>
  <script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>
  <script>
    function initPayPalButton() {
      paypal.Buttons({
        style: {
          shape: 'rect',
          color: 'gold',
          layout: 'vertical',
          label: 'paypal',
          
        },

        createOrder: function(data, actions) {
          return actions.order.create({
            purchase_units: [{"amount":{"currency_code":"USD","value":<%=dollars%>}}]
          });
        },

        onApprove: function(data, actions) {
          return actions.order.capture().then(function(orderData) {
            
            // Full available details
            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

            // Show a success message within this page, e.g.
            const element = document.getElementById('paypal-button-container');
            element.innerHTML = '';
              element.innerHTML = '<h3>Payment Successfull</h3>';
            element.innerHTML = '<h3>Thank you for your payment!<br>Payment Sucsessfull!<br>  <h5 style="text-align: center"><i class="fas fa-check fa-8x"  style="color: #1ce321" ></i> </h5> </h3> <form action="./profile.jsp"><button type="submit">profile</button></form>   ';

            // Or go to another URL:  actions.redirect('thank_you.html');
            
          });
        },

        onError: function(err) {
          console.log(err);
        }
      }).render('#paypal-button-container');
    }
    initPayPalButton();
  </script>
  
 
 
  
  
    </body>
</html>
