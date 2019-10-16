<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>



<%
int id=Integer.parseInt(request.getParameter("id"));
%>
<%
	try
	{
	java.lang.Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/Java?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
	Statement statement = connection.createStatement();
	int i=statement.executeUpdate("DELETE FROM tax where Emp_Id = '"+id+"'");
	int j=statement.executeUpdate("DELETE FROM employee where Emp_Id = '"+id+"'");
	out.println("Data deleted Successfully!!");
	connection.close();
	}
	catch(SQLException e)
	{
	out.println("<h3> Database Error!! </h3>"+e);
	}

%>	