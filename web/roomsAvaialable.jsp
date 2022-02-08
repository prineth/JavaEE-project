<%@include file="navBar.jsp" %>
   <%
           response.setHeader("Cache-control","no-cache, no-store, must-revalidate");
           response.setHeader("pragma", "no-cache");
           response.setHeader("Expires", "0");
            
           if(session.getAttribute("userid")== null){
               response.sendRedirect("login.jsp");
           }
            
            %>
<head>
    <link rel="stylesheet" href="avaiable.css" >
    <style>
        .statusBox{
    width: 600px;
    height: 50px;
    background-color: blue;
    border-radius: 10px;
    margin-left: 100px;
    margin-top: 100px;
    text-align: center;
}
.statuspara{
    margin : 10px 0px 0px 10px;
}

    </style>
</head>

<form action="checkAvailability" method="post"> 
        <div class="container">
            <div class="row" >
                   
                    <h1 class="frmclass" style="text-align: center">Rooms Availability</h1>
                   
                    <div class="col-6 col-lg-6 col-md-6" >
                    <p >Room Type</p>
                    
                    <%
                      String Regular= (String)session.getAttribute("Regular");
                      String Deluxe= (String)session.getAttribute("Deluxe"); 
                      String Executive= (String)session.getAttribute("Executive");
                      
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
                     
                    %>
                    <select name="room_type" class="browser-default custom-select" style="width: 100%;height: 40px">
                            <option selected value=<%=Rstr%> > <%=Rstr +" Room"%> </option>
                            <option value="Regular">Regular Room</option>
                            <option value="Deluxe">Deluxe Suite</option>
                            <option value="Executive">Executive Room</option>
                            
                        </select>
                   </div>
                 
                  
                     <div class="col-lg-2 col-md-2">      
                        <p>Nights</p>
                        <input type="number" name="nights" style="width: 100%;height: 40px" value="0"/>
                     </div>
                    
                     <div class="col-lg-2 col-md-2">      
                        <p>Rooms</p>
                          <input type="number"  name="rooms" style="width: 100%;height: 40px"  value="0"/>
                     </div>
                    
                    <div class="col-lg-2 col-md-2">      
                    <p>No of Guests</p>
                        <input type="number" name="no_of_guests" style="width: 100%;height: 40px"  value="0"/>
                    </div>
                    
             
                    </div>
            
            <br>
        
             <div class="row" >
                   
                   
                   
                    <div class="col-6 col-lg-6 col-md-6" >
                    <p >Arrival Date</p>

                                      <div class="input-group date" id="datepicker" >
                                          <input type="date" name="arrival_date" class="form-control" style="height: 40px">
                                          
                                      </div>

                   </div>
                 
                      <div class="col-6 col-lg-6 col-md-6" >
                    <p >Departure Date</p>

                                      <div class="input-group date" id="datepickertwo" >
                                          <input type="date" name="departure_date" class="form-control" style="height: 40px">
                                          
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
                       <button type="submit" class="btn btn-primary"  style="width: 200px;background-color: rgba(131, 67, 77, 1);border: none">Check availability</button>
                   </div>
          
            
        </div>
        
        </form>
                            
        <%
        String rd="amma"; 
        rd = (String)session.getAttribute("status");
        String color="";
        String css="";
        String btn="";
    //  String rd = (String)request.getAttribute("status");
      
        if(rd==null){
            css="none";
        }else{
            css="block";
        }
        
        if("available".equals(rd)){
            color = "#2a9d8f";
        }else{
            color = "#e63946";
            btn="none";
        }
       
%>
      
                    <form action="./doneavailable" method="post"  >
                    <div class="container" style="display:<%=css%>;margin-top:20px; " >
                        <div class="card" style="background-color:<%=color%>;">
                                <div class="card-header"></div>
                                <div class="card-body">
                                  <h5 class="card-title" style="color:black"><%=rd%></h5>
                                 
                                  <button class="btn btn-primary" type="submit" style="display:<%=btn%>">Book</button>
                                </div>
                              </div>
                          </div>
                     </form>
                    
                    
        <br>
        <br>
           
    <%@ include file="footer.jsp"%>


