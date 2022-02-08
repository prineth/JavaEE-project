<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <link rel="stylesheet" href="index_style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Serif:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

        <link rel="shortcut icon" type="image" href="Assets/image/logo/logo.png"/>

        <title>Golden Reach</title>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp" id="hotel_name">Golden Reach</a>
                <button
                    class="navbar-toggler"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarText"
                    aria-controls="navbarText"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse justify-content-center" id="navbarText">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="gallery.jsp">Gallery</a>
                        </li>
                        <li>
                            <a class="nav-link active" href="accomadation.jsp">Accommodation</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="about_us.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="contact_us.jsp">Contact Us</a>
                        </li>

                    </ul>
                </div>
                <ul class="navbar-nav ">
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Sign Up/Login</a>
                    </li>
                    <%

                        Integer rds = (Integer) session.getAttribute("userid");
                        String csss;

                        if (rds == null) {
                            csss = "none";
                        } else {
                            csss = "block";
                        }

                    %>


                    <li class="nav-item" style="display:<%=csss%>;">
                        <a class="nav-link" href="profile.jsp">profile</a>
                    </li>
                    
                    <form action="./logout" method="POST">
                    <li class="nav-item" style="display:<%=csss%>;">
                        <button type="submit" style="border:none;background-color:#B69101;color: white;margin-top: 8px">Logout</button>
                        
                    </li>
                    </form>
                    
                    
                </ul>

            </div>

        </nav>
        <!--NAVBAR - END -->