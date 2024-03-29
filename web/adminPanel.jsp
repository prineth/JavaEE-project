<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="navBar.jsp" %>
       
        <div class="container">
            <div class="row">
            <div class="col-sm-4" style="background-color: aqua; height: 20rem;">
            <img src="" alt="adminImage">
            </div>
            <div class="col-sm-8" style="background-color:rgb(255, 166, 0); height: 20rem;">
            <div>
                //Admin Details
            </div>
            </div>
            </div>
            <h2>Users</h2>
            <div class="row">
                <table>
                    <tr>
                    <td><button type="button" class="btn btn-outline-primary" data-mdb-ripple-color="dark">View Users</button></td>
                    <td><button type="button" class="btn btn-outline-primary" data-mdb-ripple-color="dark">Add User</button></td>
                    <td><button type="button" class="btn btn-outline-primary" data-mdb-ripple-color="dark">Update User</button></td>
                    <td><button type="button" class="btn btn-outline-primary" data-mdb-ripple-color="dark">Delete User</button></td>
                    </tr>
                </table>       
            </div>
            <div class="row">
                //view
            </div>
            <h2>Rooms</h2>
                <div class="row"> 
                <table>
                    <tr>
                    <td><button type="button" class="btn btn-outline-primary" data-mdb-ripple-color="dark">View Rooms</button></td>
                    <td><button type="button" class="btn btn-outline-primary" data-mdb-ripple-color="dark">Add Room</button></td>
                    <td><button type="button" class="btn btn-outline-primary" data-mdb-ripple-color="dark">Update Room</button></td>
                    <td><button type="button" class="btn btn-outline-primary" data-mdb-ripple-color="dark">Delete Room</button></td>
                    </tr>
                </table>       
            </div>
            <div class="row">
                //view
            </div>
        </div>
        
            
    
         <%@ include file="footer.jsp"%>
    </body>
</html>

