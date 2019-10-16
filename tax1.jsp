<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<html>
<link rel="stylesheet" href="css/bootstrap.min.css">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#"><div id="logo">ALVA'S</div></font></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.html">Home </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index2.jsp">Apply</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="tax1.jsp">Tax<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="edit.html">Edit</a>
              </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
           
            
          </form>
        </div>
      </nav>
<form name="form" method="post" action="tax.jsp">
  
  <table border="0" cellpadding="5" cellspacing="0">
    <tr> <td style="width:40%">
Employee Id:<input type="text" class="form-control" placeholder="Enter Id" name="id"></td> </tr> <tr> <td colspan="2">
Number of Hours worked in a Week:<input type="text" class="form-control" placeholder="Enter hours" name="hours"></td> </tr> <tr> <td colspan="2">
Hourly Rate:<input type="text" class="form-control" placeholder="Enter hourly rate" name="rate"></td> </tr> <tr> <td colspan="2"></td></tr> <tr><td colspan="2">
Enter federal tax withholding rate:<input type="text" class="form-control" placeholder="Enter tax rate" name="federal"></td> </tr> <tr> <td colspan="2">
Enter state tax withholding rate:<input type="text" class="form-control" placeholder="Enter tax rate" name="state"></td> </tr>
</table>
<input type="submit" class="btn btn-primary" value="Submit">
</form>
</html> 