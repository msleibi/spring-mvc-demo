<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
href= "${pageContext.request.contextPath}/resources/css/style.css" /> 

</head>
<body>

<h1>
Hello in Spring World !
</h1>

<h2>
Student names: ${param.studentName}
</h2>

<br> <br>

The message: ${message}	

<hr>
<a href="/spring-mvc-demo"> Home page</a> 

<br><br>

<a href="/spring-mvc-demo/hello/showForm"> Back to hello world form </a>

</body>
</html>