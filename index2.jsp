<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>APPLY</title>
<style type="text/css">
.right {text-align: right;
}
</style>
</head>

<body bgcolor="#FFFF">
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
                <a class="nav-link" href="tax1.jsp">Tax</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="edit.html">Edit</a>
              </li>
          </ul>
        </div>
      </nav>
<form action="index1.jsp" method="POST" onsubmit="return ValidateForm(this);">
<script type="text/javascript">
function ValidateForm(frm) {
if (frm.ID.value == "") { alert('ID is required.'); frm.ID.focus(); return false; }
if (frm.Name.value == "") { alert('Name is required.'); frm.Name.focus(); return false; }
if (frm.Gender.value == "") { alert('Gender is required.'); frm.Gender.focus(); return false; }
if (frm.Email_Address.value == "") { alert('Email address is required.'); frm.Email_Address.focus(); return false; }
if (frm.Email_Address.value.indexOf("@") < 1 || frm.Email_Address.value.indexOf(".") < 1) { alert('Please enter a valid email address.'); frm.Email_Address.focus(); return false; }
if (frm.Position.value == "") { alert('Position is required.'); frm.Position.focus(); return false; }
if (frm.Phone.value == "") { alert('Phone is required.'); frm.Phone.focus(); return false; }
return true; }
</script>
<table border="0" cellpadding="5" cellspacing="0">
<tr> <td style="width:40%">
<label for="ID"><b>Emp ID*</b></label><br />
<input name="ID" type="int" class="form-control" placeholder="Enter Id" maxlength="5" style="width: 260px" />
</td> </tr> <tr> <td colspan="2">
<label for="Name"><b>Name *</b></label><br/>
<input name="Name" type="text" class="form-control" placeholder="Enter Name" maxlength="50" style="width: 260px" />
</td> 
</tr> <tr> <td colspan="2">
<label for="Gender"><b>Gender*</b></label><br />
<input name="Gender" type="radio" class="custom-radio .custom-control-label::before" value="Male" checked="checked" /> Male
<input name="Gender" type="radio" class="custom-radio .custom-control-label::before" value="Female" /> Female   
</td> </tr> <tr> <td colspan="2">
<label for="Email_Address"><b>Email *</b></label><br />
<input name="Email_Address" type="text"  class="form-control" placeholder="Enter Email" maxlength="100" style="width: 535px" />
</td> </tr> <tr> <td colspan="2">
<label for="Portfolio"><b>Portfolio website</b></label><br />
<input name="Portfolio" type="text"  class="form-control" placeholder="Enter URL" maxlength="255" value="http://" style="width: 535px" />
</td> </tr> <tr> <td colspan="2">
<label for="Position"><b>Position you are applying for *</b></label><br />
<input name="Position" type="text"  class="form-control" placeholder="Enter Position" maxlength="100" style="width: 535px" />
</td> </tr> <tr> <td>
<label for="Salary"><b>Salary requirements</b></label><br /> 
<input name="Salary" type="text"  class="form-control" placeholder="Enter Salary" maxlength="50" style="width: 260px" /> </td> <td>
<label for="Date"><b>Date of Birth:</b></label><br />
<input name="Date"  class="form-control" placeholder="Enter DOB" type="date" style="width: 260px" />
</td> </tr> <tr> <td>
<label for="Phone"><b>Phone *</b></label><br />
<input name="Phone" type="text"  class="form-control" placeholder="Enter Phone" maxlength="50" style="width: 260px" />
</td> <td>
<label for="Organization"><b>Last company you worked for</b></label><br />
<input name="Organization" type="text"  class="form-control" placeholder="Enter Company Name" maxlength="100" style="width: 535px" />
</td> </tr> <tr> <td colspan="2">
<input name="skip_submit" class="btn btn-primary" type="submit" value="Send Application" />
</td> </tr>
</table>
</form>
</body>
</html>