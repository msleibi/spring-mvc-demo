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

<form action="processFormVersionTwo" method="get">

<input type="text" name="studentName" placeholder="What's your name?">
<input type="submit">

</form>

</body>
</html>