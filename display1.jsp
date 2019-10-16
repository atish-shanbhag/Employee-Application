<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.*" %>
	<!DOCTYPE html>

<h2 align="center"><font color="#FF00FF"><strong>Details</strong></font></h2>
<table align="center" cellpadding="4" cellspacing="4">
<tr>

</tr>
<tr bgcolor="#008000">
<td><b>Emp_Id</b></td>
<td><b>Name</b></td>
<td><b>Gender</b></td>
<td><b>Email_Address</b></td>
<td><b>URL</b></td>
<td><b>Position</b></td>
<td><b>Salary</b></td>
<td><b>DOB</b></td>
<td><b>phone</b></td>
<td><b>Org</b></td>
<td><b>hours</b></td>
<td><b>rate</b></td>
<td><b>federal</b></td>
<td><b>state</b></td>
<td><b>grossPay</b></td>
<td><b>deduction</b></td>
<td><b>netPay</b></td>
</tr>
<%

try
	{
	java.lang.Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/Java?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
	
Statement statement = connection.createStatement();
String sql = "SELECT * FROM employee,tax";


ResultSet resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>

<tr bgcolor="#8FBC8F">
<td><%=resultSet.getString("Emp_Id")%></td>
<td><%=resultSet.getString("Name")%></td>
<td><%=resultSet.getString("Gender")%></td>
<td><%=resultSet.getString("Email_Address")%></td>
<td><%=resultSet.getString("URL")%></td>
<td><%=resultSet.getString("Position")%></td>
<td><%=resultSet.getString("Salary")%></td>
<td><%=resultSet.getString("DOB")%></td>
<td><%=resultSet.getString("phone")%></td>
<td><%=resultSet.getString("Org")%></td>
<td><%=resultSet.getString("hours")%></td>
<td><%=resultSet.getString("rate")%></td>
<td><%=resultSet.getString("federal")%></td>
<td><%=resultSet.getString("state")%></td>
<td><%=resultSet.getString("grossPay")%></td>
<td><%=resultSet.getString("deduction")%></td>
<td><%=resultSet.getString("netPay")%></td>
</tr>

<%
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<html>
<a href="index.html">go back</a>
</html>