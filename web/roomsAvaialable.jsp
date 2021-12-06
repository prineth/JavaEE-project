<%@include file="navBar.jsp" %>
        
        <div class="container">
            <div class="row" >
                   
                    <h1 class="frmclass" style="text-align: center">Rooms Availability</h1>
                   
                    <div class="col-6 col-lg-6 col-md-6" >
                    <p >Room Type</p>
                    <select class="browser-default custom-select" style="width: 100%;height: 40px">
                            <option selected>Open this select th Room</option>
                            <option value="1">Presidential Room</option>
                            <option value="2">Executive Room</option>
                            <option value="3">Superior Room</option>
                        </select>
                   </div>
                 
                  
                     <div class="col-lg-2 col-md-2">      
                        <p>Nights</p>
                        <input type="number"  style="width: 100%;height: 40px" value="0"/>
                     </div>
                    
                     <div class="col-lg-2 col-md-2">      
                        <p>Rooms</p>
                          <input type="number"  style="width: 100%;height: 40px"  value="0"/>
                     </div>
                    
                    <div class="col-lg-2 col-md-2">      
                    <p>No of Guests</p>
                        <input type="number"  style="width: 100%;height: 40px"  value="0"/>
                    </div>
                    
             
                    </div>
            
            <br>
        
             <div class="row" >
                   
                   
                   
                    <div class="col-6 col-lg-6 col-md-6" >
                    <p >Arrival Date</p>

                                      <div class="input-group date" id="datepicker" >
                                          <input type="text" class="form-control" style="height: 40px">
                                          <span class="input-group-append">
                                              <span class="input-group-text bg-white d-block">
                                                  <i class="fa fa-calendar" style="height: 21.5px"></i>
                                              </span>
                                          </span>
                                      </div>

                   </div>
                 
                      <div class="col-6 col-lg-6 col-md-6" >
                    <p >Departure Date</p>

                                      <div class="input-group date" id="datepickertwo" >
                                          <input type="text" class="form-control" style="height: 40px">
                                          <span class="input-group-append">
                                              <span class="input-group-text bg-white d-block">
                                                  <i class="fa fa-calendar" style="height: 21.5px"></i>
                                              </span>
                                          </span>
                                      </div>

                   </div>
                 
                    <script type="text/javascript">
                       $(function() {
                           $('#datepicker').datepicker();
                       });
                   </script>
                   
                   <script type="text/javascript">
                       $(function() {
                           $('#datepickertwo').datepicker();
                       });
                   </script>

                   
                  
                
           
                    
             
                    </div>
            
              <div class="subbtn"  style="padding-top: 30px">
                       <button type="button" class="btn btn-primary"  style="width: 200px;background-color: rgba(131, 67, 77, 1);border: none">Check availability</button>
                   </div>
          
            
        </div>
            
    <%@ include file="footer.jsp"%>


