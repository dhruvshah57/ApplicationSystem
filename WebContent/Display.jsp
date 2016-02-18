<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
 <%@page import="cs520.Applicant"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applicant Display</title>

</head>
<body>

<h2> CS Grade Admissions  </h2><br/>
<a href = 'AddApplication'>Add New Application</a><br/>
				<h2> View Application </h2><br/>
				<table class="sortable" border='1'>
				<tr>
				<td>Applicant</td>
				<td>Application received on</td>
				<td>GPA</td>
				<td>Status</td>
				<td>Operation</td>
				</tr>
	<c:forEach items="${applications }" var="a">
	<tr>
			<td>
		<c:out value ="${a.getName() }"></c:out>
			</td>
			<td>
		<c:out value ="${a.getDate() }"></c:out>
			</td>
			<td>
		<c:out value ="${a.getGpa() }"></c:out>
			</td>
			<td>
		<c:out value ="${a.getStatus() }"></c:out>
			</td>
			<td>
			<a href='Edit?ID=<c:out value = "${a.getName() }"></c:out>'>EDIT</a>
			</td>
			</tr>
	
	</c:forEach>
	

</table>
</body>
</html>