<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
href= "${pageContext.request.contextPath}/resources/css/style.css" /> 

<title>Show Student data</title>
</head>
<body>

<h2> Welcome Student: </h2> 
	<h3> ${student.firstName}  ${student.lastName} </h3>

<h2> Country: </h2> 
	<h3> ${student.country} </h3>

<h2> Favorite language: </h2> 
	<h3> ${student.favoriteLanguage} </h3>

<h2> Favorite operating system: </h2>

 <ul>
 	<c:forEach var="Opsystems" items="${student.favoriteOperatingSys}">
 		<li> <h3> ${Opsystems} </h3></li>
 	</c:forEach>
 </ul>


<hr>
<a href="/spring-mvc-demo"> Home page</a> 

<br><br>

<a href="/spring-mvc-demo/student/showForm"> Back to Student form </a>

</body>
</html>