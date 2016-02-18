<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    <%@ page import="cs520.*" %>
<%@ page import ="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applicant Display</title>

</head>
<body>
<h2> CS Grade Admission > Edit Application <h2>


  <form method='post' action='Edit'>
					<table border = "1">
					<c:forEach items="${applications }" var="a">
					<c:if test="${a.getName()== ID }">
					<input type="hidden" name ="id" value = "${ID }">
					<td><input type='text' value = "${a.getName() }" name='applicant'/></td></tr>
					<tr><td> Application Received on(MM/DD/YYYY)</td>
					<td><input type='text' value = "${a.getDate() }" name='applicationreceived'></td></tr>
					<tr><td> GPA:</td>
					<td><input type='text' value = "${a.getGpa() }" name='gpa'/></td></tr>
					<tr>
					<td>Status</td>
					<td>
					<SELECT name ="status" required>
					<option value="default">select one</option>
					<option value="applicationincomplete" <c:if test="${a.getStatus()=='applicationincomplete' }">selected</c:if>>application Incomplete</option>
					<option value="pendingreview" <c:if test="${a.getStatus()=='pendingreview' }">selected</c:if>>Pending Review</option>
					<option value="rejected" <c:if test="${a.getStatus()=='rejected' }">selected</c:if>>Rejected</option>
					<option value="accepted" <c:if test="${a.getStatus()=='accepted' }">selected</c:if>>Accepted</option>
					<option value="admissionoffersent" <c:if test="${a.getStatus()=='admissionoffersent' }">selected</c:if>>Admission Offer Sent</option>
					<option value="admissionofferaccepted" <c:if test="${a.getStatus()=='admissionofferaccepted' }">selected</c:if>>Admission Offer Accepted</option>
					</SELECT>
					</td></tr>
					<tr><td><input type='submit' value='save'/></td></tr>
					
					</c:if>
			        </c:forEach>
					</table>
					</form>
			
					
</body>
</html>