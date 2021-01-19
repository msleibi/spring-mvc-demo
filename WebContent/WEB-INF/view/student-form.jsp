<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css"
href= "${pageContext.request.contextPath}/resources/css/style.css" /> 
<title>Student Form</title>
</head>
<body>

<form:form action="processStudentForm" modelAttribute="student"  method="get">

First name: <form:input path="firstName" ></form:input>

<br> <br>

Last name: <form:input path="lastName" ></form:input>

<br> <br>

<!-- 
Country: <form:select path="country">
<form:option value="Germany" label="Germany" />
<form:option value="Brazil" label="Brazil" />
<form:option value="France" label="France" />
<form:option value="United States" label="USA" />
<form:option value="United Kindom" label="UK" />
</form:select>
 -->
 
 <!--  or we will load them from the backend in Student class
 Country: <form:select path="country">
 <form:options items="${student.countryOptions}" />
 </form:select>
 -->
 
 <!--  or loading the country options from properties file -->
  Country: <form:select path="country">
 <form:options items="${theCountryOptions}" />
 </form:select>
 <br> <br>

Favorite Programming language:
 <br> <br>
 <form:radiobutton path="favoriteLanguage" value="Java"/> Java
 <form:radiobutton path="favoriteLanguage" value="Php"/>  PHP
 <form:radiobutton path="favoriteLanguage" value="C#"/>   C#
 <form:radiobutton path="favoriteLanguage" value="Ruby"/> Ruby

<br> <br>
Operating systems: 
 <form:checkbox path="favoriteOperatingSys" value="Windows"/> Windows
 <form:checkbox path="favoriteOperatingSys" value="Linux"/>   Linux
 <form:checkbox path="favoriteOperatingSys" value="Mac"/>     Mac

<br> <br>

<input type="submit" value="Submit" />

</form:form>

</body>
</html>