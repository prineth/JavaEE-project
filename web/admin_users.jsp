<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Golden Reach Admin Dashboard</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.css">
        <style>
            .sidebar {
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                z-index: 100;
                padding: 90px 0 0;
                box-shadow: inset -1px 0 0 rgba(0, 0, 0, .1);
                z-index: 99;
            }

            @media (max-width: 767.98px) {
                .sidebar {
                    top: 11.5rem;
                    padding: 0;
                }
            }

            .navbar {
                box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .1);
            }

            @media (min-width: 767.98px) {
                .navbar {
                    top: 0;
                    position: sticky;
                    z-index: 999;
                }
            }

            .sidebar .nav-link {
                color: #333;
            }

            .sidebar .nav-link.active {
                color: #0d6efd;
            }
        </style>
    </head>
    <body>

        <%
            try {
                /* Create string of connection url within specified format with machine
           name, port number and database name. Here machine name id localhost and 
           database name is student. */
                String connectionURL = "jdbc:mysql://localhost:3306/hotel";
                // declare a connection by using Connection interface
                Connection connection = null;
                /* declare object of Statement interface that is used for executing sql 
           statements. */
                Statement statement = null;
                // declare a resultset that uses as a table for output data from tha table.
                ResultSet rs = null;
                // Load JBBC driver "com.mysql.jdbc.Driver"
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                /* Create a connection by using getConnection() method that takes parameters 
           of string type connection url, user name and password to connect to database.*/
                connection = DriverManager.getConnection(connectionURL, "root", "");
                /* createStatement() is used for create statement object that is used for 
           sending sql statements to the specified database. */
                statement = connection.createStatement();

                //int user_id = (int)session.getAttribute("userid"); 
                // sql query to retrieve values from the secified table.
                String QueryString = "SELECT id,fname,lname,email,number FROM user;";
                rs = statement.executeQuery(QueryString);
        %>

        <nav class="navbar navbar-light bg-light p-3">
            <div class="d-flex col-12 col-md-3 col-lg-2 mb-2 mb-lg-0 flex-wrap flex-md-nowrap justify-content-between">
                <a class="navbar-brand" href="#">
                    Golden Reach Dashboard
                </a>
                <button class="navbar-toggler d-md-none collapsed mb-3" type="button" data-toggle="collapse" data-target="#sidebar" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>

            <div class="col-12 col-md-5 col-lg-8 d-flex align-items-center justify-content-md-end mt-3 mt-md-0">
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false">
                        Hello, John Doe
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Messages</a></li>
                        <li><a class="dropdown-item" href="#">Sign out</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                    <div class="position-sticky">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="admin_dashboard.jsp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                                    <span class="ml-2">Dashboard</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="#">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                                    <!-- <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg> -->
                                    <span class="ml-2">Guests</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="admin_rooms.jsp">
                                    <!-- <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg> -->
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
                                    <span class="ml-2">Rooms</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="admin_halls.jsp">
                                    <!-- <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg> -->
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart-2"><line x1="18" y1="20" x2="18" y2="10"></line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg>
                                    <span class="ml-2">Halls</span>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="admin_resevations.jsp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-layers"><polygon points="12 2 2 7 12 12 22 7 12 2"></polygon><polyline points="2 17 12 22 22 17"></polyline><polyline points="2 12 12 17 22 12"></polyline></svg>
                                    <span class="ml-2">Reserved Rooms & Halls</span>
                                </a>
                            </li>

                        </ul>
                    </div>
                </nav>
                <main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4">

                    <h1 class="h2">Guests</h1>
                    <p>This is the Golden Reach Admin Dashboard</p>
                    <div class="row my-4">



                    </div>
                    <div class="row">
                        <div class="col-12 col-xl-8 mb-4 mb-lg-0">
                            <div class="card">
                                <h5 class="card-header">Latest Guests</h5>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <th scope="col">Guest ID</th>
                                                <th scope="col">First Name</th>
                                                <th scope="col">Last Name</th>
                                                <th scope="col">Email</th>

                                                <th scope="col">Contact</th>
                                            </tr>
                                            <%
                                                while (rs.next()) {
                                            %>
                                            <tbody>
                                                <tr>
                                                    <th scope="row"><%=rs.getInt("id")%></th>
                                                    <td><%=rs.getString("fname")%></td>
                                                    <td><%=rs.getString("lname")%></td>
                                                    <td><%=rs.getString("email")%></td>
                                                    <td><%=rs.getInt("number")%></td>
                                                </tr>
                                            </tbody>
                                    </div>

                                    <% } %>
                                    <%
                                        // close all the connections.
                                        rs.close();
                                        statement.close();
                                        connection.close();
                                    } catch (Exception ex) {
                                    %>
                                    </font>
                                    <font size="+3" color="red"></b>
                                    <%
                                            out.println("Unable to connect to database.");
                                        }
                                    %>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-xl-4">
                        <div class="card">
                            <h5 class="card-header">Guests last 6 months</h5>
                            <div class="card-body">
                                <div id="traffic-chart"></div>
                            </div>
                        </div>
                    </div>
            </div><br>

            <div class="row">
                <div class="card col-sm-3" style="width: 25rem; margin-right:15px; margin-left:11px;">
                    <div class="card-body">
                        <h5 style="font-weight: bolder">Update User</h5>
                        <br>
                        <p class="card-text" >Enter the reservation id delete your reservation</p>
                        <form action="./guestUpdate" method="post">  
                            <div class="form-outline">
                                <input type="text"  name="guestID_update"  />
                            </div>
                            <br>
                            <button type="submit" class="btn btn-success">Update guest</button>
                        </form>
                    </div>

                </div>
                <div class="card col-sm-3" style="width: 25rem;">
                    <div class="card-body">
                        <h5 style="font-weight: bolder">Delete User</h5>
                        <br>
                        <p class="card-text" >Enter the reservation id delete your reservation</p>
                        <form action="./guestDelete" method="post">  
                            <div class="form-outline">
                                <input type="text"  name="guestID"  />
                            </div>
                            <br>
                            <button type="submit" class="btn btn-danger">Delete guest</button>
                        </form>
                    </div>
                </div>
            </div>
            <footer class="pt-5 d-flex justify-content-between">
                <span>Copyright © 2019-2020 <b>Goldern reach</b></span>
                <ul class="nav m-0">
                    <li class="nav-item">
                        <a class="nav-link text-secondary" aria-current="page" href="#">Privacy Policy</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-secondary" href="#">Terms and conditions</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-secondary" href="#">Contact</a>
                    </li>
                </ul>
            </footer>
        </main>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.js"></script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script>
    new Chartist.Line('#traffic-chart', {
        labels: ['January', 'Februrary', 'March', 'April', 'May', 'June'],
        series: [
            [23000, 25000, 19000, 34000, 56000, 64000]
        ]
    }, {
        low: 0,
        showArea: true
    });
</script>
</body>
</html>