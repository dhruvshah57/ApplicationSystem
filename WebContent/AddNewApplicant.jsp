<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="cs520.*" %>
<%@ page import ="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applicant Display</title>

</head>
<body>
<%List<Applicant> applications = (List<Applicant>)getServletContext().getAttribute("applications"); %>
<h2> CS Grade Admission > New Application <h2>

  <form method='post' action='AddApplication'>
					<table border = "1">
					<tr><td> Applicant</td>
					<td><input type='text' name='applicant' required/></td></tr>
					<tr><td> Application Received on(MM/DD/YYYY)</td>
					<td><input type='text' name='applicationreceived' required/></td></tr>
					<tr><td> GPA:</td>
					<td><input type='text' name='gpa'/></td></tr>
					<tr>
					<td>Status</td>
					<td>
					<SELECT name ="status" required>
					<option value="default">select one</option>
					<option value="applicationincomplete">Application Incomplete</option>
					<option value="pendingreview">Pending Review</option>
					<option value="rejected">Rejected</option>
					<option value="accepted">Accepted</option>
					<option value="admissionoffersent">Admission Offer Sent</option>
					<option value="admissionofferaccepted">Admission Offer Accepted</option>
					</SELECT>
					</td></tr>
					<tr><td><input type='submit' value='add'/></td></tr>
					</table>
					</form>
					
</body>
</html>