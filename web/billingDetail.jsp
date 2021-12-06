<%@include file="navBar.jsp" %>
      
      <div class="container">
        <div class="row" >
            <div class="col-lg-6">
                <h2>Billing Details</h2>
                <div class="row" style="margin: 15px; background-color: #f0f0f0;">
                    <h5>Billing Invoice</h5>

                     <section>


                <div class="card">
                  <div class="card-header bg-white text-center py-3">
                   <table style="text-align: left;">
                       <tr >
                        <td style="width: 350px;">Arrival</td>
                        <td>01/11/2021 </td>
                    </tr>
                    <tr>
                        <td>Departure</td>
                        <td> 03/11/2021 </td>
                    </tr>
                    <tr>
                        <td>Length Of Stay</td>
                        <td>02 Night </td>
                    </tr>
                    </table>

                  </div>

                  <div class="card-body">
                                           <table style="text-align: left;">
                       <tr >
                        <td style="width: 350px;">Room 01</td>
                        <td>Supeior Room</td>
                    </tr>
                    <tr>
                        <td>Room Only</td>
                        <td> 70 USD</td>
                    </tr>

                    </table>

                  </div>
                  
                  <div  class="card-footer bg-white d-flex justify-content-between py-3">
                  
                   
                    <strong>Sub Total:</strong>
                    <strong>$199</strong>
                  </div>
                  <div  class="card-footer bg-white d-flex justify-content-between py-3">
                  
                   
                      <strong>Taxes & Fees</strong>
                    <strong>8%</strong>
                    
                    <!--br>
                    
                    <p>Service Charges</p>
                    <p>2 USD</p-->
                  </div>

                  
                   <div class="card-footer bg-white d-flex justify-content-between py-3">
                  

                       <h4><strong>Total amount:</strong></h4>
                       <h4><strong>$199</strong></h4>
                  </div>
                </div>
                <button type="button" class="btn btn-success btn-block mb-4">
                  Place order
                </button>         
              </section>
              <!--Section: Summary-->
                </div>

            <div class="col-md-4 mb-4">
              <!--Section: Summary-->
             
                </div>
            </div>
            
            <div class="col-lg-6">
                
            </div>
        </div>
      </div>
      
      
    <%@ include file="footer.jsp"%>
