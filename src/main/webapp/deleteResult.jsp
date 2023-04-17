<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete Result</title>
	<style>
		body{
			background-color: #fff;
		}
	</style>
</head>
<body>
	<c:choose>
		<c:when test="${status eq 'success' }">
			<h1 style='color:green; text-align:center;' >Data deleted successfully...</h1>
		</c:when>
		<c:when test="${status eq 'failure' }">
			<h1 style='color:red; text-align:center;' >Deletion failed...</h1>
		</c:when>
		<c:otherwise>
			<h1 style='color:red; text-align:center;' >Data not found...</h1>	
		</c:otherwise>	
	</c:choose>
</body>
</html>