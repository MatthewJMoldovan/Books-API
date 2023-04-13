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
	<h1>Books</h1>
		<Table>
			<thead>
				<tr>
					<th> ID </th>
					<th> Title </th>
					<th> Language </th>
					<th> # of Pages </th>	
				</tr>	
			</thead>
			<tbody>
				<c:forEach var="eachBook" items="${bookList }">
					<tr>
						<td> <c:out value="${eachBook.id }"></c:out></td>
						<td> <a href="/books/${eachBook.id }"><c:out value="${eachBook.title }"></c:out></a></td>
						<td> <c:out value="${eachBook.language }"></c:out></td>
						<td> <c:out value="${eachBook.pages }"></c:out></td>						
					</tr>
				</c:forEach>
			</tbody>
		</Table>
</body>
</html>