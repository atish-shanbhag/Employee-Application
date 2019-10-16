<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.*" %>
	

<%
int id=Integer.parseInt(request.getParameter("id"));
int hours=Integer.parseInt(request.getParameter("hours"));
double rate=Double.parseDouble(request.getParameter("rate"));
double federal=Double.parseDouble(request.getParameter("federal"));
double state=Double.parseDouble(request.getParameter("state"));
double grossPay= rate * hours;
double tax1=federal/100;
double federalTax= tax1 * grossPay;
double tax2=state/100;
double stateTax=tax2 * grossPay;
double deduction= federalTax + stateTax;
double netPay = (grossPay) - deduction;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/operation_style.css">
<table class="table table-striped">
  	<thead>
    	<tr>
    	<th scope="col">Emp_Id</th>
      	<th scope="col">No. of hours worked</th>
	<th scope="col">Rate per hour</th>
	<th scope="col">Federal tax rate</th>
	<th scope="col">State tax rate</th>
	<th scope="col">Gross pay</th>
	<th scope="col">Total Deduction</th>
	<th scope="col">Net Pay (After Deductions)</th>
    	</tr>
  	</thead>
<tr><td><%=id%></td>
<td><%=hours%></td>
<td><%=rate%></td>
<td><%=federal%></td>
<td><%=state%></td>
<td><%=grossPay%></td>
<td><%=deduction%></td>
<td><%=netPay%></td></tr>
</table>
</body>
</html>
<%
	try
	{
	java.lang.Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/Java?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
	Statement statement = connection.createStatement();
	int i=statement.executeUpdate("INSERT INTO tax VALUES('"+id+"','"+hours+"','"+rate+"','"+federal+"','"+state+"','"+grossPay+"','"+deduction+"','"+netPay+"');");
	out.println("Data inserted Successfully!!");
	connection.close();
	}
	catch(SQLException e)
	{
	out.println("<h3> Database Error!! </h3>"+e);
	}

%>	