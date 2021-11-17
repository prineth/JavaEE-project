<%-- 
    Document   : roomsAvaialable
    Created on : Nov 16, 2021, 1:20:04 PM
    Author     : hirun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--boostraps link -->
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

                <!-- MDB -->
                <script
                  type="text/javascript"
                  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"
                ></script>
        <!--end of boostraps link -->
        
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    
    <!-- start boostrap date picker link -->
        
        <link rel="stylesheet" href="roomsavailable.css">
    </head>
    <body>
        
        <!--Navbar start-->
                <%@ include file="../Navbar/navBar.jsp"  %>
        <!--Navbar end-->
        
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
            
    </body>
</html>


