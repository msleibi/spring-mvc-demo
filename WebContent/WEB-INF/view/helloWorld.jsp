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
Welcome to Spring: ${param.studentName}
</h2>

<br> <br>

The message: ${message}	

</body>
</html>