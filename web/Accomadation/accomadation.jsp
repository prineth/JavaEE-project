<%-- 
    Document   : accomadation
    Created on : Nov 7, 2021, 2:33:53 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : gallery
    Created on : Nov 7, 2021, 2:27:56 AM
    Author     : user
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>

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
    <link rel="stylesheet" href="rooms.css">
     <script src="newjavascript.js"></script> 
  

    <title>My Hotel</title>
  </head>
  <body>
    <%@ include file="../Navbar/navBar.jsp"%>
    <!--NAVBAR - END -->
    <!-- Card -->
    </br></br>
<b><h3 class="text-center mt-4">ROOMS<br></h3></b></b></b>
</br>

<div class="container-fluid">
<!-- Card deck -->
<div class="row mr-2 ml-2">
<div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
    <!-- Card1 -->
    
    <div class="card">
  
        <!--Card image-->
        <div class="view overlay">
            <div class="hovereffect">

                <div class="inner" >
                <img class="card-img-top" src="https://i.ibb.co/rH4NDPJ/steven-ungermann-a-RT5-UCf2-MYY-unsplash.jpg" alt="steven-ungermann-a-RT5-UCf2-MYY-unsplash"
                alt="Card image cap"
                
                >
            </div>
                    <div class="overlay">
                        <h2>Come In As Guests. Leave As Family</h2>
                        <p>Deluxe Room City Facing</p>
                    </div>
            </div>
                        <a href="#!">
                             <div class="mask rgba-white-slight"></div>
          </a>
      
    </div>
      <!--Card content-->
          <div class="card-body">
  
              <!--Title-->
              <h4 class="card-title text-center">Regular Room</h4>
              <!--Text-->
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                content.</p>
              <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
              
              <center><a href="../Room-Booking/room_booking.jsp"><button type="button" class="button btnseemo" id="myButton" onclick="newly();">Book</button></a> </center>

         </div>
  
    </div>

</div>

    <!-- Card2 -->
    <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
    <div class="card">
        <!--Card image-->
            <div class="view overlay">
                <div class="hovereffect">
                     <div class="inner" >
                   <img class="card-img-top" src="https://i.ibb.co/rH4NDPJ/steven-ungermann-a-RT5-UCf2-MYY-unsplash.jpg" alt="steven-ungermann-a-RT5-UCf2-MYY-unsplash"
                   alt="Card image cap"></div>
                        <div class="overlay">
                             <h2>Come In As Guests. Leave As Family</h2>
                             <p><a href="#">Link here</a></p>
                        </div>
                </div>
                   <a href="#!">
                   <div class="mask rgba-white-slight"></div>
                   </a>
            </div>
  
            <!--Card content-->
            <div class="card-body">
                 <!--Title-->
                 <h4 class="card-title text-center">Deluxe Suite</h4>
                 <!--Text-->
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                   content.</p>
                 <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                 <center><button type="button" class="button btnseemo" onclick="newlytwo();">Book</button></center>
  
            </div>
  
    </div>

</div> 

    <!-- Card3 -->
    <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
    <div class="card">
         <!--Card image-->
        <div class="view overlay">
                <div class="hovereffect"> <div class="inner" >
                     <img class="card-img-top" src="https://i.ibb.co/rH4NDPJ/steven-ungermann-a-RT5-UCf2-MYY-unsplash.jpg" alt="steven-ungermann-a-RT5-UCf2-MYY-unsplash"
                     alt="Card image cap"></div>
                                 <div class="overlay">
                                      <h2>Come In As Guests. Leave As Family</h2>
                                      <p><a href="#">Link here</a></p>
                                </div>
                </div>
                    <a href="#!">
                    <div class="mask rgba-white-slight"></div>
                    </a>
        </div>
  
            <!--Card content-->
            <div class="card-body">
                <!--Title-->
                <h4 class="card-title text-center">Executive Room</h4>
                <!--Text-->
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                 content.</p>
                <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                <center><button type="button" class="button btnseemo" onclick="newlythree();">Book</button></center>
  
            </div>
  
    </div>

    <!-- Card -->

  
</div>
</div>
  <!-- Card deck -->
</div>
</br></br>
<b><h3 class="text-center mt-4">Meeting Room<br></h3></br>

<div class="container-fluid">
<!-- Card deck -->
<div class="row mr-2 ml-2">
<div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
    <!-- Card1 -->
    
    <div class="card">
  
        <!--Card image-->
        <div class="view overlay">
            <div class="hovereffect">

                <div class="inner" >
                <img class="card-img-top" src="https://i.ibb.co/ZYBGCCB/s-o-c-i-a-l-c-u-t-1-RT4tx-DDAb-M-unsplash.jpg"
                alt="Card image cap"
                
                >
            </div>
                    <div class="overlay">
                        <h2>Come In As Guests. Leave As Family</h2>
                        <p>Deluxe Room City Facing</p>
                    </div>
            </div>
                        <a href="#!">
                             <div class="mask rgba-white-slight"></div>
          </a>
      
    </div>
      <!--Card content-->
          <div class="card-body">
  
              <!--Title-->
              <h4 class="card-title text-center">Regular Room</h4>
              <!--Text-->
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                content.</p>
              <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
              
                <center> <button type="button" class="button btnseemo" id="myButton" onclick="newlly();">Book</button></center>
</div>
 </div>
</div>

    <!-- Card2 -->
    <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
    <div class="card">
        <!--Card image-->
            <div class="view overlay">
                <div class="hovereffect">
                     <div class="inner" >
                   <img class="card-img-top" src="https://i.ibb.co/ZYBGCCB/s-o-c-i-a-l-c-u-t-1-RT4tx-DDAb-M-unsplash.jpg"
                   alt="Card image cap"></div>
                        <div class="overlay">
                             <h2>Come In As Guests. Leave As Family</h2>
                             <p><a href="#">Link here</a></p>
                        </div>
                </div>
                   <a href="#!">
                   <div class="mask rgba-white-slight"></div>
                   </a>
            </div>
  
            <!--Card content-->
            <div class="card-body">
                 <!--Title-->
                 <h4 class="card-title text-center">Deluxe Suite</h4>
                 <!--Text-->
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                   content.</p>
                 <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                 <center><button type="button" class="button btnseemo" onclick="newlytwo();">Book</button></center>
          </div>
      </div>
</div> 

    <!-- Card3 -->
    <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
    <div class="card">
         <!--Card image-->
        <div class="view overlay">
                <div class="hovereffect"> <div class="inner" >
                     <img class="card-img-top" src="https://i.ibb.co/ZYBGCCB/s-o-c-i-a-l-c-u-t-1-RT4tx-DDAb-M-unsplash.jpg"
                     alt="Card image cap"></div>
                                 <div class="overlay">
                                      <h2>Come In As Guests. Leave As Family</h2>
                                      <p><a href="#">Link here</a></p>
                                </div>
                </div>
                    <a href="#!">
                    <div class="mask rgba-white-slight"></div>
                    </a>
        </div>
  
            <!--Card content-->
            <div class="card-body">
                <!--Title-->
                <h4 class="card-title text-center">Executive Room</h4>
                <!--Text-->
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                 content.</p>
                <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                <center><button type="button" class="button btnseemo" onclick="newlythree();">Book</button></center>
  
            </div>
  
    </div>

    <!-- Card -->

  
</div>
</div>
  <!-- Card deck -->
</div>



<%@ include file="../Footer/footer.jsp"%>
</div>
    </div>
      
  </body>
</html>

