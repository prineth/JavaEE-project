<%@include file="navBar.jsp" %>
        
        <div class="container">
            <div class="row" >
                   
                    <h1 class="frmclass" style="text-align: center">Rooms Availability</h1>
                   
                    <div class="col-6 col-lg-6 col-md-6" >
                    <p >Room Type</p>
                    
                    <%
                      String Regular= (String)session.getAttribute("Regular");
                      String Deluxe= (String)session.getAttribute("Deluxe"); 
                      String Executive= (String)session.getAttribute("Executive");
                      String Wedding= (String)session.getAttribute("Wedding");
                      String Ballroom= (String)session.getAttribute("Ballroom"); 
                      String Conference= (String)session.getAttribute("Conference");
                      
                      String Rstr = "";
                      
                      if(Regular != null){
                           Rstr = Regular;
                      }
                      
                      if(Deluxe != null){
                           Rstr = Deluxe;
                      }
                      
                       if(Executive != null){
                           Rstr = Executive;
                      }
                       
                      if(Wedding != null){
                           Rstr = Wedding;
                      }
                      
                      if(Ballroom != null){
                           Rstr = Ballroom;
                      }
                      
                      if(Conference != null){
                           Rstr = Conference;
                      }
                     
                    %>
                    
                    <select class="browser-default custom-select" style="width: 100%;height: 40px">
                            <option selected> <%= Rstr %> </option>
                            <option value="1">Regular Room</option>
                            <option value="2">Deluxe Suite</option>
                            <option value="3">Executive Room</option>
                            <option value="3">Wedding Halls</option>
                            <option value="3">Ballroom Halls</option>
                            <option value="3">Conference Halls</option>
                            
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
                                          <input type="date" class="form-control" style="height: 40px">
                                          
                                      </div>

                   </div>
                 
                      <div class="col-6 col-lg-6 col-md-6" >
                    <p >Departure Date</p>

                                      <div class="input-group date" id="datepickertwo" >
                                          <input type="date" class="form-control" style="height: 40px">
                                          
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
        <br>
        <br>
            
    <%@ include file="footer.jsp"%>


