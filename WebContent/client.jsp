<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Clienti</title>
</head>
<body>
<!-- Aici vom face afisarea listei de clienti  -->

<a href="insertClient.jsp">Creaza un nou client</a>
<table border=1 cellpadding="10">
<tr>
	<td>ID</td>
	<td>Nume</td>
	<td>Prenume</td>
	<td>Varsta</td>
	<td>Cont</td>
	<td>Sold</td>
	<td>Actiuni</td>
</tr>
<c:forEach var="client" items="${clienti}">
	<%-- <c:url var = "updateLink" value="editClient.jsp">
		<c:param name="id" value="${client.id}" />
	</c:url>> --%>
	<tr>
		<td><c:out value="${client.id}"/></td> 
		<td><c:out value="${client.nume}"/></td>
		<td><c:out value="${client.prenume}"/></td> 
		<td><c:out value="${client.varsta}"/></td>
		<td><c:out value="${client.cont}"/></td> 
		<td><c:out value="${client.sold}"/></td>
		<td>
		<a href="">editeaza</a>
		&nbsp;&nbsp;&nbsp;
<%-- 		<a href="delete-client.htm/${client.id}">sterge</a> 		--%>
 		<a href="">sterge</a>
		</td>
	</tr>
</c:forEach>
</table>

</body>
</html>