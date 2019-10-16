<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>


<% 
String val = request.getParameter("ID");
String Name = request.getParameter("Name");
String Gender = request.getParameter("Gender");
String EA = request.getParameter("Email_Address");
String PF = request.getParameter("Portfolio");
String Position = request.getParameter("Position");  
String Salary = request.getParameter("Salary");
String date = request.getParameter("Date"); 
String Phone = request.getParameter("Phone"); 
String Org = request.getParameter("Organization"); 

if(val!= null)
{

try
{
Class.forName(driverName);
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/Java?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
	Statement statement = con.createStatement();
	String sql="Update employee set Name=?,Gender=?,Email_Address=?,URL=?,Position=?,Salary=?,DOB=?,phone=?,Org=? where Emp_Id="+val;
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1,Name);
ps.setString(2, Gender);
ps.setString(3, EA);
ps.setString(4, PF);
ps.setString(5, Position);
ps.setString(6, Salary);
ps.setString(7, date);
ps.setString(8, Phone);
ps.setString(9, Org);
int j = ps.executeUpdate();
if(j> 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
	
	}
	catch(SQLException e)
	{
	out.println("<h3> Database Error!! </h3>"+e);
	}
}
%>	