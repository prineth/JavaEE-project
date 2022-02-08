


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
    <head>
        <title>Profile</title>
    </head>
    <body>

        <%@include file="navBar.jsp" %>

        <%
           //response.setHeader("Cache-control","no-cache, no-store, must-revalidate");
          // response.setHeader("pragma", "no-cache");
           //response.setHeader("Expires", "0");
           
           
           response.setHeader("Cache-Control","no-store");
            response.setHeader("Pragma","no-cache"); 
            response.setHeader ("Expires", "0"); //prevents caching at the proxy server

           if(session.getAttribute("userid")== null){
               response.sendRedirect("login.jsp");
           }
            
            %>

        <%    try {
                //int userid = 5 ;

                int userid = (Integer) session.getAttribute("userid");
                String email = (String) session.getAttribute("email");
                String fname = (String) session.getAttribute("fname");
                String lname = (String) session.getAttribute("lname");
                int number = (Integer) session.getAttribute("number");

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
                String QueryString = "SELECT * FROM room_reservation WHERE user_id='" + userid + "'";
                rs = statement.executeQuery(QueryString);
        %>

        <div class="container">

            <h2 class="mt-5">Hi,  <%=fname + " "%><%=lname%>.....</h2>
            <br><br>
            <h4>My Details</h4>
            <br>
            <div class="row">
                <div class="col-lg-3">

                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 style="font-weight: bolder">personal details</h5>
                            <br>
                            <p class="card-text" ><span style="font-weight: bold">name    : </span><span><%=fname + " "%><%=lname%></span></p>
                            <p class="card-text" ><span style="font-weight: bold">Email   : </span><span><%=email%></span></p>
                            <p class="card-text"><span style="font-weight: bold">Contact : </span><span><%=number%></span></p>
                            <br>
                            <a href="#" class="btn btn-primary">Edit</a>
                        </div>
                    </div>

                </div>


                            <%
                                 String rd = (String) request.getAttribute("messageTwo");
                                    if (rd == null) {
                                        rd = "";
                                    }
                    
                                
                                
                                %>

                <div class="col-lg-4">

                    <div class="card" style="width: 25rem;">
                        <div class="card-body">
                            <h5 style="font-weight: bolder">delete reservation</h5>
                            <br>
                            <p class="card-text" >Enter the reservation id delete your reservation</p>
                            <form action="./deleteres" method="POST">  
                                <div class="form-outline">
                                    <input type="text"  name="deleteres"  />

                                </div>


                                <br>
                                <button type="submit" class="btn btn-danger">Delete</button>
                                <p><%=rd%></p>
                            </form>
                        </div>
                    </div>

                </div>




                <div class="col-lg-4">

                    <div class="card" style="width: 33rem;">
                        <div class="card-body">
                            <h5 style="font-weight: bolder">update reservation date</h5>
                            <br>
                            <p class="card-text" >reservation id</p>
                            <div class="form-outline">
                                <input type="text"  name="deleteres"  />

                            </div>


                            <p class="card-text" >Arrival Date</p>
                            <div class="form-outline">
                                <input type="date"  name="deleteres"  />

                            </div>


                            <p class="card-text" >Departure Date</p>
                            <div class="form-outline">
                                <input type="date"  name="deleteres"  />

                            </div>



                            <br>
                            <button type="button" class="btn btn-warning">update</button>
                        </div>
                    </div>

                </div>






            </div>
            <br>
            <h3>My Reservations</h3>
            <br>
            <div class="card" style="border-radius: 15px ">  
                <div class="card-body">
                    <table class="table">
                        <tr>
                            <th scope="col">reservation_id</th>
                            <th scope="col">room_id</th>
                            <th scope="col">room_fee</th>
                            <th scope="col">nights</th>

                            <th scope="col">arrival Date</th>
                            <th scope="col">depature Date</th>
                        </tr>
                        <%
                            while (rs.next()) {
                        %>
                        <tbody>
                            <tr>
                                <th scope="row"><%=rs.getInt("res_id")%></th>
                                <td><%=rs.getInt("room_id")%></td>
                                <td><%=rs.getFloat("perroom_fee")%></td>
                                <td><%=rs.getInt("nights")%></td>

                                <td><%=rs.getString("arrival_date")%></td>
                                <td><%=rs.getString("depature_date")%></td>

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
                    </TABLE>
            </div>
        </div>
    </div>
    <TABLE>

        <TR>
            <TD><FORM ACTION="welcome_to_database_query.jsp" method="get" >

        </TR>
    </TABLE>
</font>

</body>
</html>
<br>
<br>


<%@ include file="footer.jsp"%>



