<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
href= "${pageContext.request.contextPath}/resources/css/style.css" /> 

<title>Show Student data</title>
</head>
<body>

Welcome Student: <h2> ${student.firstName}  ${student.lastName} </h2>

<hr>
<a href="/spring-mvc-demo"> Home page</a> 

<br><br>

<a href="/spring-mvc-demo/student/showForm"> Back to Student form </a>

</body>
</html>