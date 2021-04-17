<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Introdu banca</title>
</head>
<body>
<div align="center">
        <h2>Banca Noua</h2>
        <form action="add-banca.htm" method="post">
            <table border="0" cellpadding="5">
                <tr>
                    <td>nume: </td>
                    <td><input type="text" name="nume" /></td>
                </tr>
                <tr>
                    <td>adresa: </td>
                    <td><input type="text" name="adresa" /></td>
                </tr> 
                 <tr>
                    <td>telefon: </td>
                    <td><input type="text" name="telefon" /></td>
                </tr> 
                <tr>
                    <td colspan="2"><input type="submit" value="Salveaza"></td>
                </tr>                    
            </table>
        </form>
    </div>
</body>
</html>