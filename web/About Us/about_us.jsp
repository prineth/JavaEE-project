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
    <link rel="stylesheet" href="about.css">
   
                
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

    <title>My Hotel</title>
  </head>
  <body>
    
      <%@ include file="../Navbar/navBar.jsp"%>

<div class="container">
    <div class="row" >
      
            
   <!--carsol start-->
   <!-- Carousel wrapper -->
<div
  id="carouselDarkVariant"
  class="carousel slide carousel-fade carousel-white"
  data-mdb-ride="carousel" 
>
  <!-- Indicators -->
  <div class="carousel-indicators">
    <button
      data-mdb-target="#carouselDarkVariant"
      data-mdb-slide-to="0"
      class="active"
      aria-current="true"
      aria-label="Slide 1"
    ></button>
    <button
      data-mdb-target="#carouselDarkVariant"
      data-mdb-slide-to="1"
      aria-label="Slide 1"
    ></button>
    <button
      data-mdb-target="#carouselDarkVariant"
      data-mdb-slide-to="2"
      aria-label="Slide 1"
    ></button>
  </div>
   
  <!-- Innerhhh -->
  <div class="carousel-inner">
    <!-- Single item -->
    <div class="carousel-item active">
      <img
        src="../Assets/image/aboutUs/slide1.jpg"
        class="d-block w-100"
        alt="..."
      />
   
      <div class="carousel-caption d-none d-md-block">
        <!--p class="headerOne">About Us</p-->
        <!--p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p-->
      </div>
    </div>

    <!-- Single item -->
    <div class="carousel-item">
      <img
        src="../Assets/image/aboutUs/slide2.jpg"
        class="d-block w-100"
        alt="..."
      />
      <div class="carousel-caption d-none d-md-block">
        <!--p class="headerOne">About Us</p-->
        <!--p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p-->
      </div>
    </div>

    <!-- Single item -->
    <div class="carousel-item">
      <img
        src="../Assets/image/aboutUs/slide3.jpg"
        class="d-block w-100"
        alt="..."
      />
      <div class="carousel-caption d-none d-md-block">
       <!--p class="headerOne">About Us</p-->
        <!--p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p-->
      </div>
    </div>
  </div>
  <!-- Inner -->

  <!-- Controls -->
  <button
    class="carousel-control-prev"
    type="button"
    data-mdb-target="#carouselDarkVariant"
    data-mdb-slide="prev"
  >
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button
    class="carousel-control-next"
    type="button"
    data-mdb-target="#carouselDarkVariant"
    data-mdb-slide="next"
  >
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- Carousel wrapper -->

        
    </div> 
    <br>
    <div class="row" style="padding: 10px;">
        Golden Hotel is a well-known event facility and catering company in the Colombo area. Our highly qualified personnel have a similar goal of exceeding customer expectations by providing only the highest quality and service to our guests. Apart from their educational degrees, everyone of our employees receives professional training to ensure that we give you the highest level of quality and professionalism. Our adaptability allows us to address customer needs even in short time frames, ensuring that our services are always available to you.We've coupled our love of delicious food with our desire to provide you with an event space and catering service unlike any other. If you're organizing a wedding in Colombo, the Golden Hotel is the place to be.
    </div>
</div>
      <br>
    
    
<div class="container">
    <h1 style="">Welcome to Golden Hotels & Resorts</h1>
    <br>
    <div class="row">
        <div class="col-lg-6">
           
            <img src="../Assets/image/aboutUs/aboutUs.jpg" style="height: 400px;"> 
        </div>
          <div class="col-lg-6">
              <h2>Our story</h2>
            Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
            The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
        </div>
    </div>
</div>
      <br><br>
      
<%@ include file="../Footer/footer.jsp"%>
      
  </body>
</html>

