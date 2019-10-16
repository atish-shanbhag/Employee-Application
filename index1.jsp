<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.*" %>
	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/operation_style.css">

<body>
        <h2>EMPLOYEE DETAILS ARE:</h2>
	<% String val = request.getParameter("ID");
	String Name = request.getParameter("Name");
	String Gender = request.getParameter("Gender");
	String EA = request.getParameter("Email_Address");
	String PF = request.getParameter("Portfolio");
	String Position = request.getParameter("Position");  
	String Salary = request.getParameter("Salary");
	String date = request.getParameter("Date"); 
	String Phone = request.getParameter("Phone"); 
	String Org = request.getParameter("Organization");  %>
	<table class="table table-striped">
  	<thead>
    	<tr>
    	<th scope="col">Emp_Id</th>
      	<th scope="col">Name</th>
	<th scope="col">Gender</th>
	<th scope="col">Email_Adress</th>
	<th scope="col">URL</th>
	<th scope="col">Position</th>
	<th scope="col">Salary</th>
	<th scope="col">DOB</th>
	<th scope="col">Phone</th>
	<th scope="col">Last Company worked for</th>
    	</tr>
  	</thead>
	<tr>
   	<td><%=val%>&nbsp&nbsp</td>
    	<td><%=Name%>&nbsp&nbsp</td>
	<td><%=Gender%>&nbsp&nbsp</td>
	<td><%=EA%>&nbsp&nbsp</td>
	<td><%=PF%>&nbsp&nbsp</td>
	<td><%=Position%>&nbsp&nbsp</td>
	<td><%=Salary%>&nbsp&nbsp</td>
	<td><%=date%>&nbsp&nbsp</td>
	<td><%=Phone%>&nbsp&nbsp</td>
	<td><%=Org%>&nbsp&nbsp</td>

	
</table>                                      
</body>
</html>
<%
	try
	{
	java.lang.Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/Java?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
	Statement statement = connection.createStatement();
	int i=statement.executeUpdate("INSERT INTO employee VALUES('"+val+"','"+Name+"','"+Gender+"','"+EA+"','"+PF+"','"+Position+"','"+Salary+"','"+date+"','"+Phone+"','"+Org+"');");
	out.println("Data inserted Successfully!!");
	connection.close();
	}
	catch(SQLException e)
	{
	out.println("<h3> Database Error!! </h3>"+e);
	}

%>	