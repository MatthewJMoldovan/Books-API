<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1><c:out value="${oneBook.title }"></c:out></h1>
	<h3>Description: <c:out value="${oneBook.description }"></c:out></h3>
	<h3>Language: <c:out value="${oneBook.language }"></c:out></h3>
	<h3>Number of Pages: <c:out value="${oneBook.pages }"></c:out></h3>	
</body>
</html>