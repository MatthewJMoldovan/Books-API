<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="w-75 p-4 mx-auto">
		<h1 class ="text-center">Books</h1>
			<div class="shadow mb-4 rounded border p-4 text-start">
				<Table class="table">
					<thead>
						<tr>
							<th> ID </th>
							<th colspan="2"> Title </th>
							<th> Language </th>
							<th> # of Pages </th>	
						</tr>	
					</thead>
					<tbody>
						<c:forEach var="eachBook" items="${bookList }">
							<tr>
								<td> <c:out value="${eachBook.id }"></c:out></td>
								<td colspan="2"> <a href="/books/${eachBook.id }"><c:out value="${eachBook.title }"></c:out></a></td>
								<td> <c:out value="${eachBook.language }"></c:out></td>
								<td> <c:out value="${eachBook.pages }"></c:out></td>						
							</tr>
						</c:forEach>
					</tbody>
				</Table>
			</div>
		</div>
</body>
</html>