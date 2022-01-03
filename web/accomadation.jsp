<%@page import="sun.security.pkcs11.wrapper.Functions"%>
<%@include file="navBar.jsp" %>
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
                    
            </div>
                        
      
    </div>
      <!--Card content-->
          <div class="card-body">
  
              <!--Title-->
              <h4 class="card-title text-center">Regular Room</h4>
              <!--Text-->
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                content.</p>
              <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
              
              <center>
                  
                  <form action="roomBook" method="post">
                      <button type="submit" class="button btnseemo" name="Regular Room" value="Regular Room">Book</button>
                  </form>
              </center>                  
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
                        
                </div>
                   
            </div>
  
            <!--Card content-->
            <div class="card-body">
                 <!--Title-->
                 <h4 class="card-title text-center">Deluxe Suite</h4>
                 <!--Text-->
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                   content.</p>
                 <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                 <center>
                  <form action="roomBook" method="post">
                      <button type="submit" class="button btnseemo" id="btn2" name="Deluxe Suite" value="Deluxe Suite">Book</button>
                  </form>
              </center>   
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
                                 
                </div>
                   
        </div>
  
            <!--Card content-->
            <div class="card-body">
                <!--Title-->
                <h4 class="card-title text-center">Executive Room</h4>
                <!--Text-->
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                 content.</p>
                <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                <center>
                  <form action="roomBook" method="post">
                      <button type="submit" class="button btnseemo" id="btn3" name="Executive Room" value="Executive Room">Book</button>
                  </form>
              </center>   
                
                
            </div>
  
    </div>

    <!-- Card -->

  
</div>
</div>
  <!-- Card deck -->
</div>
</br></br>
<b><h3 class="text-center mt-4">Conference Halls<br></h3></br>

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
                    
            </div>
                        
      
    </div>
      <!--Card content-->
          <div class="card-body">
  
              <!--Title-->
              <h4 class="card-title text-center">Wedding Halls</h4>
              <!--Text-->
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                content.</p>
              <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
              
                <center>
                  <form action="roomBook" method="post">
                      <button type="submit" class="button btnseemo" id="btn4" name="Wedding Halls" value="Wedding Halls">Book</button>
                  </form>
              </center>   
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
                        
                </div>
                   
            </div>
  
            <!--Card content-->
            <div class="card-body">
                 <!--Title-->
                 <h4 class="card-title text-center">Ballroom Halls</h4>
                 <!--Text-->
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                   content.</p>
                 <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                 <center>
                  <form action="roomBook" method="post">
                      <button type="submit" class="button btnseemo" id="btn5" name="Ballroom Halls" value="Ballroom Halls">Book</button>
                  </form>
              </center>   
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
                                 
                </div>
                   
        </div>
  
            <!--Card content-->
            <div class="card-body">
                <!--Title-->
                <h4 class="card-title text-center">Conference Halls</h4>
                <!--Text-->
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                 content.</p>
                <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                <center>
                  <form action="roomBook" method="post">
                      <button type="submit" class="button btnseemo" id="btn6" name="Conference Halls" value="Conference Halls">Book</button>
                  </form>
              </center>   
  
            </div>
  
    </div>

    <!-- Card -->

  
</div>
</div>
  <!-- Card deck -->
</div>

    <br><br><br>

   
</div>
    </div>
      
    <%@ include file="footer.jsp"%>
