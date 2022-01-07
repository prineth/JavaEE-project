

       
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title>display data from the table using jsp</title>
</head>
<body>

  
    
<h2>Data from the table 'stu_info' of database 'student'</h2>
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
String QueryString = "SELECT * FROM room_reservation WHERE user_id=5";
rs = statement.executeQuery(QueryString);
%>
<TABLE border="5" style="width: 400px;height: 500px">
    <tr>
    <th>res_id</th>
    <th>res_id</th>
    <th>res_id</th>
    <th>res_id</th>
    
</tr>
<%
while (rs.next()) {
%>

<tr>
<TD><%=rs.getInt("res_id")%></TD>
<TD><%=rs.getInt("room_id")%></TD>
<TD><%=rs.getFloat("perroom_fee")%></TD>
<TD><%=rs.getInt("nights")%></TD>
</tr>
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
</TABLE><TABLE>
<TR>
<TD><FORM ACTION="welcome_to_database_query.jsp" method="get" >
<button type="submit"><-- back</button></TD>
</TR>
</TABLE>
</font>

</body>
</html>
          

   

                    
    
        
        