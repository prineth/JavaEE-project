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
        <link rel="stylesheet" href="roomsavailable.css">
    </head>
    <body>
        
        <!--Navbar start-->
                <%@ include file="../Navbar/navBar.jsp"%>
        <!--Navbar end-->
        
        <div class="container">
            <div class="row" >
                   
                    <h1 class="frmclass" style="text-align: center">Rooms Availability</h1>
                    <br><br>
                    <div class="col-lg-6" >
                    <p >Room Type</p>
                    <select class="browser-default custom-select" style="width: 100%;height: 40px">
                            <option selected>Open this select th Room</option>
                            <option value="1">Presidential Room</option>
                            <option value="2">Executive Room</option>
                            <option value="3">Superior Room</option>
                        </select>
                   </div>
                 
                      
                     <div class="col-lg-2">      
                        <p>Nights</p>
                        <input type="number"  style="width: 100%;height: 40px" value="0"/>
                     </div>
                    
                     <div class="col-lg-2">      
                        <p>Rooms</p>
                          <input type="number"  style="width: 100%;height: 40px"  value="0"/>
                     </div>
                    
                    <div class="col-lg-2">      
                    <p>participant</p>
                        <input type="number"  style="width: 100%;height: 40px"  value="0"/>
                    </div>
                    
                </div>
        </div>
            
    </body>
</html>


