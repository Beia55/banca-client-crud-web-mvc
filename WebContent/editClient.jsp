<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Introdu client</title>
</head>
<body>
<div align="center">
        <h2>Client Nou</h2>
        <form action="edit-client.htm" method="post">
            <table border="0" cellpadding="5">
                <tr>
                    <td>nume: </td>
                    <td><input type="text" name="nume" /></td>
                </tr>
                <tr>
                    <td>prenume: </td>
                    <td><input type="text" name="prenume" /></td>
                </tr>
                <tr>
                    <td>varsta: </td>
                    <td><input type="text" name="varsta" /></td>
                </tr> 
                 <tr>
                    <td>cont: </td>
                    <td><input type="text" name="cont" /></td>
                </tr> 
                 <tr>
                    <td>sold: </td>
                    <td><input type="text" name="sold" /></td>
                </tr>    
                <tr>
                    <td colspan="2"><input type="submit" value="Salveaza"></td>
                </tr>                    
            </table>
        </form>
    </div>
</body>
</html>