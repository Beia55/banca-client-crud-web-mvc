<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banci</title>
</head>
<body>
<!-- Aici vom face afisarea listei de clienti  -->
<a href="/new">Creaza o noua banca</a>
<table border=1 cellpadding="10">
<tr>
	<td>ID</td>
	<td>Nume</td>
	<td>Adresa</td>
	<td>Telefon</td>
</tr>
<c:forEach var="banca" items="${banci}">
	<tr>
		<td><c:out value="${banca.id}"/></td> 
		<td><c:out value="${banca.nume}"/></td>
		<td><c:out value="${banca.adresa}"/></td> 
		<td><c:out value="${banca.telefon}"/></td>
		<td>
		<a href="/@{'/edit/' + ${banca.id}}">editeaza</a>
		&nbsp;&nbsp;&nbsp;
		<a href="/@{'/edit/' + ${banca.id}}">sterge</a>
		</td>
	</tr>
</c:forEach>
</table>

</body>
</html>